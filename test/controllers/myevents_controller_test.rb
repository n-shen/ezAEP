require 'test_helper'

class MyeventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myevent = myevents(:one)
  end

  test "should get index" do
    get myevents_url
    assert_response :success
  end

  test "should get new" do
    get new_myevent_url
    assert_response :success
  end

  test "should create myevent" do
    assert_difference('Myevent.count') do
      post myevents_url, params: { myevent: { event_id: @myevent.event_id, myevent_code: @myevent.myevent_code, user_id: @myevent.user_id } }
    end

    assert_redirected_to myevent_url(Myevent.last)
  end

  test "should show myevent" do
    get myevent_url(@myevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_myevent_url(@myevent)
    assert_response :success
  end

  test "should update myevent" do
    patch myevent_url(@myevent), params: { myevent: { event_id: @myevent.event_id, myevent_code: @myevent.myevent_code, user_id: @myevent.user_id } }
    assert_redirected_to myevent_url(@myevent)
  end

  test "should destroy myevent" do
    assert_difference('Myevent.count', -1) do
      delete myevent_url(@myevent)
    end

    assert_redirected_to myevents_url
  end
end
