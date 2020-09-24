require "application_system_test_case"

class PastorsTest < ApplicationSystemTestCase
  setup do
    @pastor = pastors(:one)
  end

  test "visiting the index" do
    visit pastors_url
    assert_selector "h1", text: "Pastors"
  end

  test "creating a Pastor" do
    visit pastors_url
    click_on "New Pastor"

    fill_in "Name", with: @pastor.name
    click_on "Create Pastor"

    assert_text "Pastor was successfully created"
    click_on "Back"
  end

  test "updating a Pastor" do
    visit pastors_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pastor.name
    click_on "Update Pastor"

    assert_text "Pastor was successfully updated"
    click_on "Back"
  end

  test "destroying a Pastor" do
    visit pastors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pastor was successfully destroyed"
  end
end
