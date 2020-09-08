require 'test_helper'

class OrderShippingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_shipping = order_shippings(:one)
  end

  test "should get index" do
    get order_shippings_url
    assert_response :success
  end

  test "should get new" do
    get new_order_shipping_url
    assert_response :success
  end

  test "should create order_shipping" do
    assert_difference('OrderShipping.count') do
      post order_shippings_url, params: { order_shipping: { address: @order_shipping.address, city: @order_shipping.city, neighborhood: @order_shipping.neighborhood, num: @order_shipping.num, order_id: @order_shipping.order_id, uf: @order_shipping.uf } }
    end

    assert_redirected_to order_shipping_url(OrderShipping.last)
  end

  test "should show order_shipping" do
    get order_shipping_url(@order_shipping)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_shipping_url(@order_shipping)
    assert_response :success
  end

  test "should update order_shipping" do
    patch order_shipping_url(@order_shipping), params: { order_shipping: { address: @order_shipping.address, city: @order_shipping.city, neighborhood: @order_shipping.neighborhood, num: @order_shipping.num, order_id: @order_shipping.order_id, uf: @order_shipping.uf } }
    assert_redirected_to order_shipping_url(@order_shipping)
  end

  test "should destroy order_shipping" do
    assert_difference('OrderShipping.count', -1) do
      delete order_shipping_url(@order_shipping)
    end

    assert_redirected_to order_shippings_url
  end
end
