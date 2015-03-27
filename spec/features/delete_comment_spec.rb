require 'rails_helper'

describe "deletes a comment functionality" do
  it "deletes a comment" do
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    visit post_path(post)
    click_on 'Delete'
    expect(page). to have_no_content(comment)
  end
end
