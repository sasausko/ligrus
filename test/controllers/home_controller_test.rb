require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get beuseful" do
    get home_beuseful_url
    assert_response :success
  end
end
