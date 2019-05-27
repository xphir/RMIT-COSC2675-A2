require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    # Create users
    @user = users(:example_user)
    @admin = users(:example_admin)
    @correct_user = users(:michael)

    # Create relations
    @category = categories(:one)
    @location = locations(:one)
    @course = courses(:one)

    @course.categories << @category
    @course.locations << @location

    

  end

  test "should get index" do
    get courses_path
    assert_response :success
  end

  test "should not get new" do
    get new_course_path
    assert_redirected_to login_path
  end

  test "should get new" do
    log_in_as(@user)
    get new_course_path
    assert_response :success
  end

  test "should create course" do
    log_in_as(@user)
    assert_difference('Course.count') do
      post courses_path, params: { course: { name: 'Course Test', prerequisite: "Course Zero", user_id: 1, location_ids: [@location.id], category_ids: [@category.id], description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' } }
    end
    assert_redirected_to course_path(Course.last)
  end

  test "should not create course" do
    assert_no_difference('Course.count') do
      post courses_path, params: { course: { name: 'Course Test Fail', prerequisite: "Course Zero", user_id: 1, location_ids: [@location.id], category_ids: [@category.id], description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' } }
    end
    assert_redirected_to login_path
  end

  test "should show course" do
    get course_path(@course)
    assert_response :success
  end

  test "should get edit" do
    log_in_as(@correct_user)
    get edit_course_path(@course)
    assert_response :success
  end

  test "should not get edit - wrong user" do
    log_in_as(@user)
    get edit_course_path(@course)
    assert_redirected_to courses_path
  end

  test "should not get edit" do
    get edit_course_path(@course)
    assert_redirected_to login_path
  end

  test "should update course" do
    log_in_as(@correct_user)
    patch course_url(@course), params: { course: { prerequisite: "Course 99" } }
    assert_response :success
    #assert_redirected_to course_path(@course)
  end

  test "should not update course - wrong user" do
    log_in_as(@user)
    patch course_url(@course), params: { course: { prerequisite: "Course 100" } }
    assert_redirected_to courses_path
  end

  test "should not update course - no user" do
    patch course_url(@course), params: { course: { prerequisite: "Course 101" } }
    assert_redirected_to login_path
  end

  test "should destroy course" do
    log_in_as(@admin)
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end

  test "should fail destroy course - wrong user" do
    log_in_as(@user)
    assert_difference('Course.count', 0) do
      delete course_url(@course)
    end
    assert_redirected_to root_path
  end

  test "should fail destroy course - no user" do
    assert_difference('Course.count', 0) do
      delete course_url(@course)
    end
    assert_redirected_to login_path
  end
end
