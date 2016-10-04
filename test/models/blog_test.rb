require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "should not save blog without title or text" do
    blog = Blog.new
    assert_not blog.save, "Saved the blog without title or text"
  end
end
