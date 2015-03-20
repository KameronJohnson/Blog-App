require 'rails_helper'

describe "the add posts process" do
  it "adds a new post" do
    post = Post.create({title: "post1"})
    visit posts_path
    click_on "Add a Post"
    fill_in "Title", :with => 'post1'
    fill_in "Content", :with => 'stuff'
    fill_in "Date", :with => "November 12, 1984"
    expect(page). to have_content "Content"
  end
end
