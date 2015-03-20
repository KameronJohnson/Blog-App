require 'rails_helper'

describe "edit comments functionality" do
  it "edits a comment" do
    post = Post.create(:title => 'section1')
    comment = Lesson.create(:comment_text => 'comment text', :post_id => post.id)
    visit post_comment_path(post, comment)
    click_on 'edit'
    fill_in 'Comment_Text', :with => 'OMG'
    click_on 'Update Comment'
    expect(page). to have_content 'Successfully'
  end
end
