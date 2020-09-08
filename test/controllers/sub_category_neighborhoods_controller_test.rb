require 'test_helper'

class SubCategoryNeighborhoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_category_neighborhood = sub_category_neighborhoods(:one)
  end

  test "should get index" do
    get sub_category_neighborhoods_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_category_neighborhood_url
    assert_response :success
  end

  test "should create sub_category_neighborhood" do
    assert_difference('SubCategoryNeighborhood.count') do
      post sub_category_neighborhoods_url, params: { sub_category_neighborhood: { neighborhood_id: @sub_category_neighborhood.neighborhood_id, price: @sub_category_neighborhood.price, sub_category_id: @sub_category_neighborhood.sub_category_id } }
    end

    assert_redirected_to sub_category_neighborhood_url(SubCategoryNeighborhood.last)
  end

  test "should show sub_category_neighborhood" do
    get sub_category_neighborhood_url(@sub_category_neighborhood)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_category_neighborhood_url(@sub_category_neighborhood)
    assert_response :success
  end

  test "should update sub_category_neighborhood" do
    patch sub_category_neighborhood_url(@sub_category_neighborhood), params: { sub_category_neighborhood: { neighborhood_id: @sub_category_neighborhood.neighborhood_id, price: @sub_category_neighborhood.price, sub_category_id: @sub_category_neighborhood.sub_category_id } }
    assert_redirected_to sub_category_neighborhood_url(@sub_category_neighborhood)
  end

  test "should destroy sub_category_neighborhood" do
    assert_difference('SubCategoryNeighborhood.count', -1) do
      delete sub_category_neighborhood_url(@sub_category_neighborhood)
    end

    assert_redirected_to sub_category_neighborhoods_url
  end
end
