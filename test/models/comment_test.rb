require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "shouldn't save comment without commenter" do
    String content = "test content"
    comment = Comment.new(content: content, post_id: 298486374)
    assert_not comment.save, "saved comment without commenter"
  end

  #test to make sure posts wont save without content
  test "shouldn't save comment without content" do
    String commenter = "test commenter"
    comment = Comment.new(commenter: commenter,post_id: 298486374 )
    assert_not comment.save, "saved comment without content"
  end

  #test to make sure comments cannot save without a post id
  test "comment shouldn't save without a postid" do
    String commenter = "test commenter"
    String content = "test content"
    comment = Comment.new(commenter: commenter, content: content)
    assert_not comment.save, "comment saved without a postid"
  end



  #Test Should save with commenter, content, and postid
  test "comment should save with commenter, content, and postid" do
    String commenter = "test commenter"
    String content = "test content"
    comment = Comment.new(commenter: commenter, content: content, post_id: 298486374 )
    assert comment.save, "comment failed to save with commenter, content and postid"
  end




end
