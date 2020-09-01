require "application_system_test_case"

class NeighborhoodsTest < ApplicationSystemTestCase
  setup do
    @neighborhood = neighborhoods(:one)
  end

  test "visiting the index" do
    visit neighborhoods_url
    assert_selector "h1", text: "Neighborhoods"
  end

  test "creating a Neighborhood" do
    visit neighborhoods_url
    click_on "New Neighborhood"

    fill_in "City", with: @neighborhood.City_id
    check "Isactive" if @neighborhood.isActive
    check "Isdelivery" if @neighborhood.isDelivery
    fill_in "Label", with: @neighborhood.label
    click_on "Create Neighborhood"

    assert_text "Neighborhood was successfully created"
    click_on "Back"
  end

  test "updating a Neighborhood" do
    visit neighborhoods_url
    click_on "Edit", match: :first

    fill_in "City", with: @neighborhood.City_id
    check "Isactive" if @neighborhood.isActive
    check "Isdelivery" if @neighborhood.isDelivery
    fill_in "Label", with: @neighborhood.label
    click_on "Update Neighborhood"

    assert_text "Neighborhood was successfully updated"
    click_on "Back"
  end

  test "destroying a Neighborhood" do
    visit neighborhoods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Neighborhood was successfully destroyed"
  end
end
