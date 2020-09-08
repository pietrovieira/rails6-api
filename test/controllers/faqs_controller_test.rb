require 'test_helper'

class FaqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faq = faqs(:one)
  end

  test "should get index" do
    get faqs_url
    assert_response :success
  end

  test "should get new" do
    get new_faq_url
    assert_response :success
  end

  test "should create faq" do
    assert_difference('Faq.count') do
      post faqs_url, params: { faq: { isActive: @faq.isActive, order: @faq.order, question: @faq.question, response: @faq.response } }
    end

    assert_redirected_to faq_url(Faq.last)
  end

  test "should show faq" do
    get faq_url(@faq)
    assert_response :success
  end

  test "should get edit" do
    get edit_faq_url(@faq)
    assert_response :success
  end

  test "should update faq" do
    patch faq_url(@faq), params: { faq: { isActive: @faq.isActive, order: @faq.order, question: @faq.question, response: @faq.response } }
    assert_redirected_to faq_url(@faq)
  end

  test "should destroy faq" do
    assert_difference('Faq.count', -1) do
      delete faq_url(@faq)
    end

    assert_redirected_to faqs_url
  end
end
