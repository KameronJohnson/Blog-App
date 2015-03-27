FactoryGirl.define do
  factory(:post) do
    title('blog post')
    content('this is the content of my blog post')
    date('11/12/1984')
  end

  factory(:comment) do
    comment_text('blah blah blah')
    post_id(1)
  end
end
