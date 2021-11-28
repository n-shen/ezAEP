require 'test_helper'

class PrestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prest = prests(:one)
  end

  test "should get index" do
    get prests_url
    assert_response :success
  end

  test "should get new" do
    get new_prest_url
    assert_response :success
  end

  test "should create prest" do
    assert_difference('Prest.count') do
      post prests_url, params: { prest: { event_id: @prest.event_id, prest_desc: @prest.prest_desc, prest_evdue: @prest.prest_evdue, prest_name: @prest.prest_name } }
    end

    assert_redirected_to prest_url(Prest.last)
  end

  test "should show prest" do
    get prest_url(@prest)
    assert_response :success
  end

  test "should get edit" do
    get edit_prest_url(@prest)
    assert_response :success
  end

  test "should update prest" do
    patch prest_url(@prest), params: { prest: { event_id: @prest.event_id, prest_desc: @prest.prest_desc, prest_evdue: @prest.prest_evdue, prest_name: @prest.prest_name } }
    assert_redirected_to prest_url(@prest)
  end

  test "should destroy prest" do
    assert_difference('Prest.count', -1) do
      delete prest_url(@prest)
    end

    assert_redirected_to prests_url
  end
end
