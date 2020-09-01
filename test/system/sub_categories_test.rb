require "application_system_test_case"

class SubCategoriesTest < ApplicationSystemTestCase
  setup do
    @sub_category = sub_categories(:one)
  end

  test "visiting the index" do
    visit sub_categories_url
    assert_selector "h1", text: "Sub Categories"
  end

  test "creating a Sub category" do
    visit sub_categories_url
    click_on "New Sub Category"

    check "Active" if @sub_category.active
    fill_in "Category", with: @sub_category.category_id
    fill_in "Description", with: @sub_category.description
    fill_in "Label", with: @sub_category.label
    click_on "Create Sub category"

    assert_text "Sub category was successfully created"
    click_on "Back"
  end

  test "updating a Sub category" do
    visit sub_categories_url
    click_on "Edit", match: :first

    check "Active" if @sub_category.active
    fill_in "Category", with: @sub_category.category_id
    fill_in "Description", with: @sub_category.description
    fill_in "Label", with: @sub_category.label
    click_on "Update Sub category"

    assert_text "Sub category was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub category" do
    visit sub_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub category was successfully destroyed"
  end
end
