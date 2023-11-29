require "test_helper"

class TouristControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tourist_new_url
    assert_response :success
  end

  test "should get create" do
    get tourist_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tourist_destroy_url
    assert_response :success
  end

  test "should get show" do
    get tourist_show_url
    assert_response :success
  end
end
