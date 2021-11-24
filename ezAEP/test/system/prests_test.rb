require "application_system_test_case"

class PrestsTest < ApplicationSystemTestCase
  setup do
    @prest = prests(:one)
  end

  test "visiting the index" do
    visit prests_url
    assert_selector "h1", text: "Prests"
  end

  test "creating a Prest" do
    visit prests_url
    click_on "New Prest"

    fill_in "Event", with: @prest.event_id
    fill_in "Prest desc", with: @prest.prest_desc
    fill_in "Prest evdue", with: @prest.prest_evdue
    fill_in "Prest name", with: @prest.prest_name
    click_on "Create Prest"

    assert_text "Prest was successfully created"
    click_on "Back"
  end

  test "updating a Prest" do
    visit prests_url
    click_on "Edit", match: :first

    fill_in "Event", with: @prest.event_id
    fill_in "Prest desc", with: @prest.prest_desc
    fill_in "Prest evdue", with: @prest.prest_evdue
    fill_in "Prest name", with: @prest.prest_name
    click_on "Update Prest"

    assert_text "Prest was successfully updated"
    click_on "Back"
  end

  test "destroying a Prest" do
    visit prests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prest was successfully destroyed"
  end
end
