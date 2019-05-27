require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
    @user = users(:michael)
    @other_user = users(:archer)
  end

  test "should get index" do
    get locations_path
    assert_response :success
  end

  test "should get new" do
    log_in_as(@user)
    get new_location_path
    assert_response :success
  end

  test "should not get new" do
    get new_location_path
    assert_redirected_to login_path
  end

  test "should create location" do
    log_in_as(@user)
    assert_difference('Location.count') do
      post locations_path, params: { location: { name: '10.01.15'  } }
    end
    assert_redirected_to location_path(Location.last)
  end

  test "should not create location" do
    assert_no_difference('Location.count') do
      post locations_path, params: { location: { name: '10.01.16'  } }
    end
    assert_redirected_to login_path
  end

  test "should show location" do
    get location_path(@location)
    assert_response :success
  end

  test "should not get edit" do
    get edit_location_path(@location)
    assert_redirected_to login_path
  end

  test "should get edit" do
    log_in_as(@user)
    get edit_location_path(@location)
    assert_response :success
  end

  test "should not update location" do
    patch location_path(@location), params: { location: { name: '14.06.16' } }
    assert_redirected_to login_path
  end

  test "should update location" do
    log_in_as(@user)
    patch location_path(@location), params: { location: { name: '14.06.16' } }
    assert_redirected_to location_path(@location)
  end

  test "should not destroy location" do
    log_in_as(@other_user)
    assert_difference('Location.count', 0) do
      delete location_path(@location)
    end

    assert_redirected_to root_path
  end

  test "should destroy location" do
    log_in_as(@user)
    assert_difference('Location.count', -1) do
      delete location_path(@location)
    end

    assert_redirected_to locations_path
  end
end
