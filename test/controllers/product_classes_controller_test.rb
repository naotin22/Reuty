require "test_helper"

class ProductClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_class = product_classes(:one)
  end

  test "should get index" do
    get product_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_product_class_url
    assert_response :success
  end

  test "should create product_class" do
    assert_difference('ProductClass.count') do
      post product_classes_url, params: { product_class: { name: @product_class.name } }
    end

    assert_redirected_to product_class_url(ProductClass.last)
  end

  test "should show product_class" do
    get product_class_url(@product_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_class_url(@product_class)
    assert_response :success
  end

  test "should update product_class" do
    patch product_class_url(@product_class), params: { product_class: { name: @product_class.name } }
    assert_redirected_to product_class_url(@product_class)
  end

  test "should destroy product_class" do
    assert_difference('ProductClass.count', -1) do
      delete product_class_url(@product_class)
    end

    assert_redirected_to product_classes_url
  end
end
