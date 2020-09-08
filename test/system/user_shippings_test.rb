require "application_system_test_case"

class UserShippingsTest < ApplicationSystemTestCase
  setup do
    @user_shipping = user_shippings(:one)
  end

  test "visiting the index" do
    visit user_shippings_url
    assert_selector "h1", text: "User Shippings"
  end

  test "creating a User shipping" do
    visit user_shippings_url
    click_on "New User Shipping"

    fill_in "Address", with: @user_shipping.address
    fill_in "City", with: @user_shipping.city_id
    fill_in "Lat", with: @user_shipping.lat
    fill_in "Long", with: @user_shipping.long
    fill_in "Neighborhood", with: @user_shipping.neighborhood_id
    fill_in "Num", with: @user_shipping.num
    fill_in "Uf", with: @user_shipping.uf
    fill_in "User", with: @user_shipping.user_id
    fill_in "Zipcode", with: @user_shipping.zipcode
    click_on "Create User shipping"

    assert_text "User shipping was successfully created"
    click_on "Back"
  end

  test "updating a User shipping" do
    visit user_shippings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user_shipping.address
    fill_in "City", with: @user_shipping.city_id
    fill_in "Lat", with: @user_shipping.lat
    fill_in "Long", with: @user_shipping.long
    fill_in "Neighborhood", with: @user_shipping.neighborhood_id
    fill_in "Num", with: @user_shipping.num
    fill_in "Uf", with: @user_shipping.uf
    fill_in "User", with: @user_shipping.user_id
    fill_in "Zipcode", with: @user_shipping.zipcode
    click_on "Update User shipping"

    assert_text "User shipping was successfully updated"
    click_on "Back"
  end

  test "destroying a User shipping" do
    visit user_shippings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User shipping was successfully destroyed"
  end
end
