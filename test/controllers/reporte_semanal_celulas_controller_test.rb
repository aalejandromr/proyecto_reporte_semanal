require 'test_helper'

class ReporteSemanalCelulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte_semanal_celula = reporte_semanal_celulas(:one)
  end

  test "should get index" do
    get reporte_semanal_celulas_url
    assert_response :success
  end

  test "should get new" do
    get new_reporte_semanal_celula_url
    assert_response :success
  end

  test "should create reporte_semanal_celula" do
    assert_difference('ReporteSemanalCelula.count') do
      post reporte_semanal_celulas_url, params: { reporte_semanal_celula: { anfitrion: @reporte_semanal_celula.anfitrion, lider: @reporte_semanal_celula.lider, reunion_evaluacion: @reporte_semanal_celula.reunion_evaluacion, sector_id: @reporte_semanal_celula.sector_id, supervisor_id: @reporte_semanal_celula.supervisor_id, visita_supervisor: @reporte_semanal_celula.visita_supervisor } }
    end

    assert_redirected_to reporte_semanal_celula_url(ReporteSemanalCelula.last)
  end

  test "should show reporte_semanal_celula" do
    get reporte_semanal_celula_url(@reporte_semanal_celula)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_semanal_celula_url(@reporte_semanal_celula)
    assert_response :success
  end

  test "should update reporte_semanal_celula" do
    patch reporte_semanal_celula_url(@reporte_semanal_celula), params: { reporte_semanal_celula: { anfitrion: @reporte_semanal_celula.anfitrion, lider: @reporte_semanal_celula.lider, reunion_evaluacion: @reporte_semanal_celula.reunion_evaluacion, sector_id: @reporte_semanal_celula.sector_id, supervisor_id: @reporte_semanal_celula.supervisor_id, visita_supervisor: @reporte_semanal_celula.visita_supervisor } }
    assert_redirected_to reporte_semanal_celula_url(@reporte_semanal_celula)
  end

  test "should destroy reporte_semanal_celula" do
    assert_difference('ReporteSemanalCelula.count', -1) do
      delete reporte_semanal_celula_url(@reporte_semanal_celula)
    end

    assert_redirected_to reporte_semanal_celulas_url
  end
end
