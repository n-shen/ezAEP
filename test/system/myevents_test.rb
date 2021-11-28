require "application_system_test_case"

class MyeventsTest < ApplicationSystemTestCase
  setup do
    @myevent = myevents(:one)
  end

  test "visiting the index" do
    visit myevents_url
    assert_selector "h1", text: "Myevents"
  end

  test "creating a Myevent" do
    visit myevents_url
    click_on "New Myevent"

    fill_in "Event", with: @myevent.event_id
    fill_in "Myevent code", with: @myevent.myevent_code
    fill_in "User", with: @myevent.user_id
    click_on "Create Myevent"

    assert_text "Myevent was successfully created"
    click_on "Back"
  end

  test "updating a Myevent" do
    visit myevents_url
    click_on "Edit", match: :first

    fill_in "Event", with: @myevent.event_id
    fill_in "Myevent code", with: @myevent.myevent_code
    fill_in "User", with: @myevent.user_id
    click_on "Update Myevent"

    assert_text "Myevent was successfully updated"
    click_on "Back"
  end

  test "destroying a Myevent" do
    visit myevents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myevent was successfully destroyed"
  end
end
