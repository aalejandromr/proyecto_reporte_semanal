require "application_system_test_case"

class AsistenciaReunionPlanificacionsTest < ApplicationSystemTestCase
  setup do
    @asistencia_reunion_planificacion = asistencia_reunion_planificacions(:one)
  end

  test "visiting the index" do
    visit asistencia_reunion_planificacions_url
    assert_selector "h1", text: "Asistencia Reunion Planificacions"
  end

  test "creating a Asistencia reunion planificacion" do
    visit asistencia_reunion_planificacions_url
    click_on "New Asistencia Reunion Planificacion"

    fill_in "Hora reunion", with: @asistencia_reunion_planificacion.hora_reunion
    check "Meta amigos alcanzada" if @asistencia_reunion_planificacion.meta_amigos_alcanzada
    check "Meta amigos establecida" if @asistencia_reunion_planificacion.meta_amigos_establecida
    fill_in "Miembros apoyo", with: @asistencia_reunion_planificacion.miembros_apoyo
    fill_in "Miembros nucleo", with: @asistencia_reunion_planificacion.miembros_nucleo
    fill_in "Ofrenda", with: @asistencia_reunion_planificacion.ofrenda
    fill_in "Reflexion semana", with: @asistencia_reunion_planificacion.reflexion_semana
    click_on "Create Asistencia reunion planificacion"

    assert_text "Asistencia reunion planificacion was successfully created"
    click_on "Back"
  end

  test "updating a Asistencia reunion planificacion" do
    visit asistencia_reunion_planificacions_url
    click_on "Edit", match: :first

    fill_in "Hora reunion", with: @asistencia_reunion_planificacion.hora_reunion
    check "Meta amigos alcanzada" if @asistencia_reunion_planificacion.meta_amigos_alcanzada
    check "Meta amigos establecida" if @asistencia_reunion_planificacion.meta_amigos_establecida
    fill_in "Miembros apoyo", with: @asistencia_reunion_planificacion.miembros_apoyo
    fill_in "Miembros nucleo", with: @asistencia_reunion_planificacion.miembros_nucleo
    fill_in "Ofrenda", with: @asistencia_reunion_planificacion.ofrenda
    fill_in "Reflexion semana", with: @asistencia_reunion_planificacion.reflexion_semana
    click_on "Update Asistencia reunion planificacion"

    assert_text "Asistencia reunion planificacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Asistencia reunion planificacion" do
    visit asistencia_reunion_planificacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asistencia reunion planificacion was successfully destroyed"
  end
end
