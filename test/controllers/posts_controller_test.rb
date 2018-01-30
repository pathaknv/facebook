require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get posts_view_url
    assert_response :success
  end

  test "should get posts" do
    get posts_posts_url
    assert_response :success
  end

end
