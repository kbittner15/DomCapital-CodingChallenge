require 'test_helper'


#tests to make sure posts wont save without title
class PostTest < ActiveSupport::TestCase

  test "shouldn't save post without title" do
    String content = "test content"
    post = Post.new(content: content)
  assert_not post.save, "saved post without title"
  end

  #test to make sure posts wont save without content
  test "shouldn't save post without content" do
    String title = "test content"
    post = Post.new(title: title)
    assert_not post.save, "saved post without content"
  end

  test "should save post with title and content " do
    String title = "test title"
    String content = "test content"
    post = Post.new(title: title, content: content)
    assert post.save, "failure to save post with title and content"
  end

  end