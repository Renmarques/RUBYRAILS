require "test_helper"

class ProdutcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produtc = produtcs(:one)
  end

  test "should get index" do
    get produtcs_url
    assert_response :success
  end

  test "should get new" do
    get new_produtc_url
    assert_response :success
  end

  test "should create produtc" do
    assert_difference("Produtc.count") do
      post produtcs_url, params: { produtc: { name: @produtc.name } }
    end

    assert_redirected_to produtc_url(Produtc.last)
  end

  test "should show produtc" do
    get produtc_url(@produtc)
    assert_response :success
  end

  test "should get edit" do
    get edit_produtc_url(@produtc)
    assert_response :success
  end

  test "should update produtc" do
    patch produtc_url(@produtc), params: { produtc: { name: @produtc.name } }
    assert_redirected_to produtc_url(@produtc)
  end

  test "should destroy produtc" do
    assert_difference("Produtc.count", -1) do
      delete produtc_url(@produtc)
    end

    assert_redirected_to produtcs_url
  end
end
