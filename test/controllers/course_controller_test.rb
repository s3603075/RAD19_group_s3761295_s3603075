require 'test_helper'

class CourseControllerTest < ActionDispatch::IntegrationTest
  test "should get web_dev" do
    get course_web_dev_url
    assert_response :success
  end

  test "should get java" do
    get course_java_url
    assert_response :success
  end

  test "should get ios" do
    get course_ios_url
    assert_response :success
  end

  test "should get full_stack_dev" do
    get course_full_stack_dev_url
    assert_response :success
  end

end
