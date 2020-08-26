require "application_system_test_case"

class ReporteSemanalCelulasTest < ApplicationSystemTestCase
  setup do
    @reporte_semanal_celula = reporte_semanal_celulas(:one)
  end

  test "visiting the index" do
    visit reporte_semanal_celulas_url
    assert_selector "h1", text: "Reporte Semanal Celulas"
  end

  test "creating a Reporte semanal celula" do
    visit reporte_semanal_celulas_url
    click_on "New Reporte Semanal Celula"

    fill_in "Anfitrion", with: @reporte_semanal_celula.anfitrion
    fill_in "Lider", with: @reporte_semanal_celula.lider
    check "Reunion evaluacion" if @reporte_semanal_celula.reunion_evaluacion
    fill_in "Sector", with: @reporte_semanal_celula.sector_id
    fill_in "Supervisor", with: @reporte_semanal_celula.supervisor_id
    check "Visita supervisor" if @reporte_semanal_celula.visita_supervisor
    click_on "Create Reporte semanal celula"

    assert_text "Reporte semanal celula was successfully created"
    click_on "Back"
  end

  test "updating a Reporte semanal celula" do
    visit reporte_semanal_celulas_url
    click_on "Edit", match: :first

    fill_in "Anfitrion", with: @reporte_semanal_celula.anfitrion
    fill_in "Lider", with: @reporte_semanal_celula.lider
    check "Reunion evaluacion" if @reporte_semanal_celula.reunion_evaluacion
    fill_in "Sector", with: @reporte_semanal_celula.sector_id
    fill_in "Supervisor", with: @reporte_semanal_celula.supervisor_id
    check "Visita supervisor" if @reporte_semanal_celula.visita_supervisor
    click_on "Update Reporte semanal celula"

    assert_text "Reporte semanal celula was successfully updated"
    click_on "Back"
  end

  test "destroying a Reporte semanal celula" do
    visit reporte_semanal_celulas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reporte semanal celula was successfully destroyed"
  end
end
