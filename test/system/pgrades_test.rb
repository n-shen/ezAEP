require "application_system_test_case"

class PgradesTest < ApplicationSystemTestCase
  setup do
    @pgrade = pgrades(:one)
  end

  test "visiting the index" do
    visit pgrades_url
    assert_selector "h1", text: "Pgrades"
  end

  test "creating a Pgrade" do
    visit pgrades_url
    click_on "New Pgrade"

    fill_in "Pd review", with: @pgrade.pd_review
    fill_in "Pd socre", with: @pgrade.pd_socre
    fill_in "Prest", with: @pgrade.prest_id
    fill_in "User", with: @pgrade.user_id
    click_on "Create Pgrade"

    assert_text "Pgrade was successfully created"
    click_on "Back"
  end

  test "updating a Pgrade" do
    visit pgrades_url
    click_on "Edit", match: :first

    fill_in "Pd review", with: @pgrade.pd_review
    fill_in "Pd socre", with: @pgrade.pd_socre
    fill_in "Prest", with: @pgrade.prest_id
    fill_in "User", with: @pgrade.user_id
    click_on "Update Pgrade"

    assert_text "Pgrade was successfully updated"
    click_on "Back"
  end

  test "destroying a Pgrade" do
    visit pgrades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pgrade was successfully destroyed"
  end
end
