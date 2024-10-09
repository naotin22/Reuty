require "application_system_test_case"

class ProductClassesTest < ApplicationSystemTestCase
  setup do
    @product_class = product_classes(:one)
  end

  test "visiting the index" do
    visit product_classes_url
    assert_selector "h1", text: "Product Classes"
  end

  test "creating a Product class" do
    visit product_classes_url
    click_on "New Product Class"

    fill_in "Name", with: @product_class.name
    click_on "Create Product class"

    assert_text "Product class was successfully created"
    click_on "Back"
  end

  test "updating a Product class" do
    visit product_classes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @product_class.name
    click_on "Update Product class"

    assert_text "Product class was successfully updated"
    click_on "Back"
  end

  test "destroying a Product class" do
    visit product_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product class was successfully destroyed"
  end
end
