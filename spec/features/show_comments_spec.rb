require 'rails_helper'

describe "show comments functionality" do
  it "shows a comment" do
    post = Post.create({title: "post1"})
    comment = Comment.create(:comment_text => 'stuff', :post_id => 1)
    post.comments.push(comment)
    visit posts_path
    click_on comment.comment_text
    expect(page). to have_content comment.comment_text
  end
end
