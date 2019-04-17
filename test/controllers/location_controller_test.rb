require 'test_helper'

class LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get 14.10.31" do
    get location_loc14_10_31_url
    assert_response :success
  end

  test "should get 14.08.26" do
    get location_loc14_08_26_url
    assert_response :success
  end

  test "should get 14.10.30" do
    get location_loc14_10_30_url
    assert_response :success
  end

end
