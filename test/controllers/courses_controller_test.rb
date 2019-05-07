require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    # Create users
    @user = users(:example_user)
    @admin = users(:example_admin)

    # Create relations
    @category = categories(:one)
    @location = locations(:one)
    @course = courses(:one)

    @course.categories << @category
    @course.locations << @location
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    skip "need to fix other parts"
    assert_difference('Course.count') do
      post courses_url, params: { course: {  } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    skip "need to fix other parts"
    patch course_url(@course), params: { course: {  } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
