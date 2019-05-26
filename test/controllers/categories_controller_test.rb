require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    skip "TODO"
    get categories_url
    assert_response :success
  end

  test "should get new" do
    skip "TODO"
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    skip "need to fix other parts"
    assert_difference('Category.count') do
      post categories_url, params: { category: {  } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    skip "TODO"
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    skip "TODO"
    patch category_url(@category), params: { category: {  } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    skip "TODO"
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end
end
