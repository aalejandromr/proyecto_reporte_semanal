require "application_system_test_case"

class AsistenciaReunionEvangelistsTest < ApplicationSystemTestCase
  setup do
    @asistencia_reunion_evangelist = asistencia_reunion_evangelists(:one)
  end

  test "visiting the index" do
    visit asistencia_reunion_evangelists_url
    assert_selector "h1", text: "Asistencia Reunion Evangelists"
  end

  test "creating a Asistencia reunion evangelist" do
    visit asistencia_reunion_evangelists_url
    click_on "New Asistencia Reunion Evangelist"

    fill_in "Aceptados", with: @asistencia_reunion_evangelist.aceptados
    fill_in "Candidatos bautismo", with: @asistencia_reunion_evangelist.candidatos_bautismo
    fill_in "Childrens", with: @asistencia_reunion_evangelist.childrens
    fill_in "Friends", with: @asistencia_reunion_evangelist.friends
    fill_in "Hnos a", with: @asistencia_reunion_evangelist.hnos_a
    fill_in "Hnos i", with: @asistencia_reunion_evangelist.hnos_i
    fill_in "Leccion", with: @asistencia_reunion_evangelist.leccion
    fill_in "Ofrenda", with: @asistencia_reunion_evangelist.ofrenda
    fill_in "Personas en discipulado", with: @asistencia_reunion_evangelist.personas_en_discipulado
    fill_in "Personas ministradas", with: @asistencia_reunion_evangelist.personas_ministradas
    fill_in "Rec", with: @asistencia_reunion_evangelist.rec
    fill_in "Visitas", with: @asistencia_reunion_evangelist.visitas
    click_on "Create Asistencia reunion evangelist"

    assert_text "Asistencia reunion evangelist was successfully created"
    click_on "Back"
  end

  test "updating a Asistencia reunion evangelist" do
    visit asistencia_reunion_evangelists_url
    click_on "Edit", match: :first

    fill_in "Aceptados", with: @asistencia_reunion_evangelist.aceptados
    fill_in "Candidatos bautismo", with: @asistencia_reunion_evangelist.candidatos_bautismo
    fill_in "Childrens", with: @asistencia_reunion_evangelist.childrens
    fill_in "Friends", with: @asistencia_reunion_evangelist.friends
    fill_in "Hnos a", with: @asistencia_reunion_evangelist.hnos_a
    fill_in "Hnos i", with: @asistencia_reunion_evangelist.hnos_i
    fill_in "Leccion", with: @asistencia_reunion_evangelist.leccion
    fill_in "Ofrenda", with: @asistencia_reunion_evangelist.ofrenda
    fill_in "Personas en discipulado", with: @asistencia_reunion_evangelist.personas_en_discipulado
    fill_in "Personas ministradas", with: @asistencia_reunion_evangelist.personas_ministradas
    fill_in "Rec", with: @asistencia_reunion_evangelist.rec
    fill_in "Visitas", with: @asistencia_reunion_evangelist.visitas
    click_on "Update Asistencia reunion evangelist"

    assert_text "Asistencia reunion evangelist was successfully updated"
    click_on "Back"
  end

  test "destroying a Asistencia reunion evangelist" do
    visit asistencia_reunion_evangelists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asistencia reunion evangelist was successfully destroyed"
  end
end
