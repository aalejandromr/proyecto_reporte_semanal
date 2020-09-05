require "application_system_test_case"

class LidersTest < ApplicationSystemTestCase
  setup do
    @lider = liders(:one)
  end

  test "visiting the index" do
    visit liders_url
    assert_selector "h1", text: "Liders"
  end

  test "creating a Lider" do
    visit liders_url
    click_on "New Lider"

    click_on "Create Lider"

    assert_text "Lider was successfully created"
    click_on "Back"
  end

  test "updating a Lider" do
    visit liders_url
    click_on "Edit", match: :first

    click_on "Update Lider"

    assert_text "Lider was successfully updated"
    click_on "Back"
  end

  test "destroying a Lider" do
    visit liders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lider was successfully destroyed"
  end
end
