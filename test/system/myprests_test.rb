require "application_system_test_case"

class MyprestsTest < ApplicationSystemTestCase
  setup do
    @myprest = myprests(:one)
  end

  test "visiting the index" do
    visit myprests_url
    assert_selector "h1", text: "Myprests"
  end

  test "creating a Myprest" do
    visit myprests_url
    click_on "New Myprest"

    fill_in "Prest", with: @myprest.prest_id
    fill_in "User", with: @myprest.user_id
    click_on "Create Myprest"

    assert_text "Myprest was successfully created"
    click_on "Back"
  end

  test "updating a Myprest" do
    visit myprests_url
    click_on "Edit", match: :first

    fill_in "Prest", with: @myprest.prest_id
    fill_in "User", with: @myprest.user_id
    click_on "Update Myprest"

    assert_text "Myprest was successfully updated"
    click_on "Back"
  end

  test "destroying a Myprest" do
    visit myprests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myprest was successfully destroyed"
  end
end
