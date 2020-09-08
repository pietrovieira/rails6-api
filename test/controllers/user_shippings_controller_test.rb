require 'test_helper'

class UserShippingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_shipping = user_shippings(:one)
  end

  test "should get index" do
    get user_shippings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_shipping_url
    assert_response :success
  end

  test "should create user_shipping" do
    assert_difference('UserShipping.count') do
      post user_shippings_url, params: { user_shipping: { address: @user_shipping.address, city_id: @user_shipping.city_id, lat: @user_shipping.lat, long: @user_shipping.long, neighborhood_id: @user_shipping.neighborhood_id, num: @user_shipping.num, uf: @user_shipping.uf, user_id: @user_shipping.user_id, zipcode: @user_shipping.zipcode } }
    end

    assert_redirected_to user_shipping_url(UserShipping.last)
  end

  test "should show user_shipping" do
    get user_shipping_url(@user_shipping)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_shipping_url(@user_shipping)
    assert_response :success
  end

  test "should update user_shipping" do
    patch user_shipping_url(@user_shipping), params: { user_shipping: { address: @user_shipping.address, city_id: @user_shipping.city_id, lat: @user_shipping.lat, long: @user_shipping.long, neighborhood_id: @user_shipping.neighborhood_id, num: @user_shipping.num, uf: @user_shipping.uf, user_id: @user_shipping.user_id, zipcode: @user_shipping.zipcode } }
    assert_redirected_to user_shipping_url(@user_shipping)
  end

  test "should destroy user_shipping" do
    assert_difference('UserShipping.count', -1) do
      delete user_shipping_url(@user_shipping)
    end

    assert_redirected_to user_shippings_url
  end
end
