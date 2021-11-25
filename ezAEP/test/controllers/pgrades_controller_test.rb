require 'test_helper'

class PgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pgrade = pgrades(:one)
  end

  test "should get index" do
    get pgrades_url
    assert_response :success
  end

  test "should get new" do
    get new_pgrade_url
    assert_response :success
  end

  test "should create pgrade" do
    assert_difference('Pgrade.count') do
      post pgrades_url, params: { pgrade: { pd_review: @pgrade.pd_review, pd_socre: @pgrade.pd_socre, prest_id: @pgrade.prest_id, user_id: @pgrade.user_id } }
    end

    assert_redirected_to pgrade_url(Pgrade.last)
  end

  test "should show pgrade" do
    get pgrade_url(@pgrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_pgrade_url(@pgrade)
    assert_response :success
  end

  test "should update pgrade" do
    patch pgrade_url(@pgrade), params: { pgrade: { pd_review: @pgrade.pd_review, pd_socre: @pgrade.pd_socre, prest_id: @pgrade.prest_id, user_id: @pgrade.user_id } }
    assert_redirected_to pgrade_url(@pgrade)
  end

  test "should destroy pgrade" do
    assert_difference('Pgrade.count', -1) do
      delete pgrade_url(@pgrade)
    end

    assert_redirected_to pgrades_url
  end
end
