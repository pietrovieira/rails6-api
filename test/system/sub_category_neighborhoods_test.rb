require "application_system_test_case"

class SubCategoryNeighborhoodsTest < ApplicationSystemTestCase
  setup do
    @sub_category_neighborhood = sub_category_neighborhoods(:one)
  end

  test "visiting the index" do
    visit sub_category_neighborhoods_url
    assert_selector "h1", text: "Sub Category Neighborhoods"
  end

  test "creating a Sub category neighborhood" do
    visit sub_category_neighborhoods_url
    click_on "New Sub Category Neighborhood"

    fill_in "Neighborhood", with: @sub_category_neighborhood.neighborhood_id
    fill_in "Price", with: @sub_category_neighborhood.price
    fill_in "Sub category", with: @sub_category_neighborhood.sub_category_id
    click_on "Create Sub category neighborhood"

    assert_text "Sub category neighborhood was successfully created"
    click_on "Back"
  end

  test "updating a Sub category neighborhood" do
    visit sub_category_neighborhoods_url
    click_on "Edit", match: :first

    fill_in "Neighborhood", with: @sub_category_neighborhood.neighborhood_id
    fill_in "Price", with: @sub_category_neighborhood.price
    fill_in "Sub category", with: @sub_category_neighborhood.sub_category_id
    click_on "Update Sub category neighborhood"

    assert_text "Sub category neighborhood was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub category neighborhood" do
    visit sub_category_neighborhoods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub category neighborhood was successfully destroyed"
  end
end
