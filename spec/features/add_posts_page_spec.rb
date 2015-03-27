require 'rails_helper'

describe "the add posts process" do
  it "adds a new post" do
    post = FactoryGirl.create(:post)
    visit posts_path
    click_on "Add a Post"
    fill_in "Title", :with => "post1"
    fill_in "Content", :with => "stuff"
    fill_in "Date", :with => "November 12, 1984"
    expect(page). to have_content "Content"
  end

  it "allows the editing of a post" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on "Edit"
    fill_in "Title", :with => "Better Title"
    click_on "Update Post"
    expect(page). to have_content "Updated"
  end
end
