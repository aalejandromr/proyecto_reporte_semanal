require "application_system_test_case"

class AsistenciaReunionEvangelistaTest < ApplicationSystemTestCase
  setup do
    @asistencia_reunion_evangelistum = asistencia_reunion_evangelista(:one)
  end

  test "visiting the index" do
    visit asistencia_reunion_evangelista_url
    assert_selector "h1", text: "Asistencia Reunion Evangelista"
  end

  test "creating a Asistencia reunion evangelistum" do
    visit asistencia_reunion_evangelista_url
    click_on "New Asistencia Reunion Evangelistum"

    fill_in "Aceptados", with: @asistencia_reunion_evangelistum.aceptados
    fill_in "Candidatos bautismo", with: @asistencia_reunion_evangelistum.candidatos_bautismo
    fill_in "Childrens", with: @asistencia_reunion_evangelistum.childrens
    fill_in "Friends", with: @asistencia_reunion_evangelistum.friends
    fill_in "Hnos a", with: @asistencia_reunion_evangelistum.hnos_a
    fill_in "Hnos i", with: @asistencia_reunion_evangelistum.hnos_i
    fill_in "Leccion", with: @asistencia_reunion_evangelistum.leccion
    fill_in "Ofrenda", with: @asistencia_reunion_evangelistum.ofrenda
    fill_in "Personas en discipulado", with: @asistencia_reunion_evangelistum.personas_en_discipulado
    fill_in "Personas ministradas", with: @asistencia_reunion_evangelistum.personas_ministradas
    fill_in "Visitas", with: @asistencia_reunion_evangelistum.visitas
    click_on "Create Asistencia reunion evangelistum"

    assert_text "Asistencia reunion evangelistum was successfully created"
    click_on "Back"
  end

  test "updating a Asistencia reunion evangelistum" do
    visit asistencia_reunion_evangelista_url
    click_on "Edit", match: :first

    fill_in "Aceptados", with: @asistencia_reunion_evangelistum.aceptados
    fill_in "Candidatos bautismo", with: @asistencia_reunion_evangelistum.candidatos_bautismo
    fill_in "Childrens", with: @asistencia_reunion_evangelistum.childrens
    fill_in "Friends", with: @asistencia_reunion_evangelistum.friends
    fill_in "Hnos a", with: @asistencia_reunion_evangelistum.hnos_a
    fill_in "Hnos i", with: @asistencia_reunion_evangelistum.hnos_i
    fill_in "Leccion", with: @asistencia_reunion_evangelistum.leccion
    fill_in "Ofrenda", with: @asistencia_reunion_evangelistum.ofrenda
    fill_in "Personas en discipulado", with: @asistencia_reunion_evangelistum.personas_en_discipulado
    fill_in "Personas ministradas", with: @asistencia_reunion_evangelistum.personas_ministradas
    fill_in "Visitas", with: @asistencia_reunion_evangelistum.visitas
    click_on "Update Asistencia reunion evangelistum"

    assert_text "Asistencia reunion evangelistum was successfully updated"
    click_on "Back"
  end

  test "destroying a Asistencia reunion evangelistum" do
    visit asistencia_reunion_evangelista_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asistencia reunion evangelistum was successfully destroyed"
  end
end
