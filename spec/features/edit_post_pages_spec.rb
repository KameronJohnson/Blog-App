require 'rails_helper'

describe "the edit post process" do
  it "edits a post" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Content', :with => 'New Content'
    click_on 'Update Post'
    expect(page).to have_content 'Successfully'
  end
end
