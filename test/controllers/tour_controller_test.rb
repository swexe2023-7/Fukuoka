require "test_helper"

class TourControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tour_index_url
    assert_response :success
  end

  test "should get new" do
    get tour_new_url
    assert_response :success
  end

  test "should get create" do
    get tour_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tour_destroy_url
    assert_response :success
  end
end
