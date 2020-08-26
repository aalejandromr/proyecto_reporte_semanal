require "application_system_test_case"

class AsistenciaDomingosTest < ApplicationSystemTestCase
  setup do
    @asistencia_domingo = asistencia_domingos(:one)
  end

  test "visiting the index" do
    visit asistencia_domingos_url
    assert_selector "h1", text: "Asistencia Domingos"
  end

  test "creating a Asistencia domingo" do
    visit asistencia_domingos_url
    click_on "New Asistencia Domingo"

    fill_in "Childrens", with: @asistencia_domingo.childrens
    fill_in "Friends", with: @asistencia_domingo.friends
    fill_in "Hnos a", with: @asistencia_domingo.hnos_a
    fill_in "Hnos i", with: @asistencia_domingo.hnos_i
    click_on "Create Asistencia domingo"

    assert_text "Asistencia domingo was successfully created"
    click_on "Back"
  end

  test "updating a Asistencia domingo" do
    visit asistencia_domingos_url
    click_on "Edit", match: :first

    fill_in "Childrens", with: @asistencia_domingo.childrens
    fill_in "Friends", with: @asistencia_domingo.friends
    fill_in "Hnos a", with: @asistencia_domingo.hnos_a
    fill_in "Hnos i", with: @asistencia_domingo.hnos_i
    click_on "Update Asistencia domingo"

    assert_text "Asistencia domingo was successfully updated"
    click_on "Back"
  end

  test "destroying a Asistencia domingo" do
    visit asistencia_domingos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asistencia domingo was successfully destroyed"
  end
end
