require 'rails_helper'

describe "the add comments process" do
  it "adds a new comment" do
    post = Post.create({title: 'post1'})
    visit posts_path(post)
    click_on "Add a Comment"
    fill_in 'Comment_Text', :with => "comment1"
    click_on "Create Comment"
    expect(page). to have_content "Comments"
  end
end
