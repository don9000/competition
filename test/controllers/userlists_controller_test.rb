require 'test_helper'

class UserlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get new" do
    get new_draw_url
    assert_response :success
  end

  test "should get show" do
    get history_path
    assert_response :success
  end

end
