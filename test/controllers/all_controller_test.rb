require 'test_helper'

class AllControllerTest < ActionDispatch::IntegrationTest
  test "should get courses" do
    get all_courses_url
    assert_response :success
  end

  test "should get coordinators" do
    get all_coordinators_url
    assert_response :success
  end

end
