require 'rails_helper'

describe "the add comments process" do
  it "adds a new comment" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on "Add a Comment"
    fill_in "Comment Text", :with => "blah blah blah"
    click_on "Create Comment"
    expect(page). to have_content "Comment"
  end
end
