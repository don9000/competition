require 'test_helper'

class DrawsControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get draws_winners_path
    assert_response :success
  end

  test "should get prompt" do
    get draws_prompt_url
    assert_response :success
  end

end
