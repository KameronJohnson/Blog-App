require 'rails_helper'

describe "deletes a comment functionality" do
  it "deletes a comment" do
    post = Post.create(:title => 'section1')
    comment = Comment.create(:comment_text => 'stuff', :post_id => post.id)
    visit post_comment_path(post, comment)
    click_on 'delete'
    expect(page). to have_no_content(comment)
  end
end
