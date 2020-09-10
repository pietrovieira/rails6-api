require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Description", with: @product.description
    fill_in "Price", with: @product.price
    fill_in "Price before", with: @product.price_before
    fill_in "Slug", with: @product.slug
    fill_in "Sub category", with: @product.sub_category_id
    fill_in "Sub title", with: @product.sub_title
    fill_in "Title", with: @product.title
    fill_in "User info", with: @product.user_info_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product.description
    fill_in "Price", with: @product.price
    fill_in "Price before", with: @product.price_before
    fill_in "Slug", with: @product.slug
    fill_in "Sub category", with: @product.sub_category_id
    fill_in "Sub title", with: @product.sub_title
    fill_in "Title", with: @product.title
    fill_in "User info", with: @product.user_info_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
