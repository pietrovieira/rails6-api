require "application_system_test_case"

class OrderShippingsTest < ApplicationSystemTestCase
  setup do
    @order_shipping = order_shippings(:one)
  end

  test "visiting the index" do
    visit order_shippings_url
    assert_selector "h1", text: "Order Shippings"
  end

  test "creating a Order shipping" do
    visit order_shippings_url
    click_on "New Order Shipping"

    fill_in "Address", with: @order_shipping.address
    fill_in "City", with: @order_shipping.city
    fill_in "Neighborhood", with: @order_shipping.neighborhood
    fill_in "Num", with: @order_shipping.num
    fill_in "Order", with: @order_shipping.order_id
    fill_in "Uf", with: @order_shipping.uf
    click_on "Create Order shipping"

    assert_text "Order shipping was successfully created"
    click_on "Back"
  end

  test "updating a Order shipping" do
    visit order_shippings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @order_shipping.address
    fill_in "City", with: @order_shipping.city
    fill_in "Neighborhood", with: @order_shipping.neighborhood
    fill_in "Num", with: @order_shipping.num
    fill_in "Order", with: @order_shipping.order_id
    fill_in "Uf", with: @order_shipping.uf
    click_on "Update Order shipping"

    assert_text "Order shipping was successfully updated"
    click_on "Back"
  end

  test "destroying a Order shipping" do
    visit order_shippings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order shipping was successfully destroyed"
  end
end
