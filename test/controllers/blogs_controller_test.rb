require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get blogs_url
    assert_response :success
  end

  test "should redirect when not logged in and request new" do
    get new_blog_url
    assert_response :redirect
  end

  test "should show blog" do
    get blog_url(@blog)
    assert_response :success
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete blog_url(@blog)
    end

    assert_redirected_to blogs_url
  end
end
