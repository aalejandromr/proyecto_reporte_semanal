require "application_system_test_case"

class CelulasTest < ApplicationSystemTestCase
  setup do
    @celula = celulas(:one)
  end

  test "visiting the index" do
    visit celulas_url
    assert_selector "h1", text: "Celulas"
  end

  test "creating a Celula" do
    visit celulas_url
    click_on "New Celula"

    click_on "Create Celula"

    assert_text "Celula was successfully created"
    click_on "Back"
  end

  test "updating a Celula" do
    visit celulas_url
    click_on "Edit", match: :first

    click_on "Update Celula"

    assert_text "Celula was successfully updated"
    click_on "Back"
  end

  test "destroying a Celula" do
    visit celulas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Celula was successfully destroyed"
  end
end
