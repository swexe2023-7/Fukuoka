require "test_helper"

class TourspotsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tourspots_new_url
    assert_response :success
  end

  test "should get create" do
    get tourspots_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tourspots_destroy_url
    assert_response :success
  end
end
