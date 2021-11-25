require 'test_helper'

class MyprestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myprest = myprests(:one)
  end

  test "should get index" do
    get myprests_url
    assert_response :success
  end

  test "should get new" do
    get new_myprest_url
    assert_response :success
  end

  test "should create myprest" do
    assert_difference('Myprest.count') do
      post myprests_url, params: { myprest: { prest_id: @myprest.prest_id, user_id: @myprest.user_id } }
    end

    assert_redirected_to myprest_url(Myprest.last)
  end

  test "should show myprest" do
    get myprest_url(@myprest)
    assert_response :success
  end

  test "should get edit" do
    get edit_myprest_url(@myprest)
    assert_response :success
  end

  test "should update myprest" do
    patch myprest_url(@myprest), params: { myprest: { prest_id: @myprest.prest_id, user_id: @myprest.user_id } }
    assert_redirected_to myprest_url(@myprest)
  end

  test "should destroy myprest" do
    assert_difference('Myprest.count', -1) do
      delete myprest_url(@myprest)
    end

    assert_redirected_to myprests_url
  end
end
