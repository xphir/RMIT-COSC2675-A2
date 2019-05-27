require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
    @user = users(:michael)
    @other_user = users(:archer)
  end

  test "should get index" do
    get categories_path
    assert_response :success
  end

  test "should get new" do
    log_in_as(@user)
    get new_category_path
    assert_response :success
  end

  test "should not get new" do
    get new_category_path
    assert_redirected_to login_path
  end

  test "should not create category" do
    assert_no_difference('Category.count') do
      post categories_path, params: { category: { name: 'Test Category' } }
    end
    assert_redirected_to login_path
  end

  test "should create category" do
    log_in_as(@user)
    assert_difference('Category.count') do
      post categories_path, params: { category: { name: 'Test Category' } }
    end
    assert_redirected_to category_path(Category.last)
  end

  test "should show category" do
    get category_path(@category)
    assert_response :success
  end

  test "should not get edit" do
    get edit_category_path(@category)
    assert_redirected_to login_path
  end

  test "should get edit" do
    log_in_as(@user)
    get edit_category_path(@category)
    assert_response :success
  end

  test "should not update category" do
    patch category_path(@category), params: { category: { name: 'Updated Category 01' } }
    assert_redirected_to login_path
  end

  test "should update category" do
    log_in_as(@user)
    patch category_path(@category), params: { category: { name: 'Updated Category 02' } }
    assert_redirected_to category_path(@category)
  end

  test "should not destroy category" do
    log_in_as(@other_user)
    assert_difference('Category.count', 0) do
      delete category_url(@category)
    end
    assert_redirected_to root_path
  end

  test "should destroy category" do
    log_in_as(@user)
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end

end
