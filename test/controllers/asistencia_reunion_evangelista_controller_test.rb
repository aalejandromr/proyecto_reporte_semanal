require 'test_helper'

class AsistenciaReunionEvangelistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asistencia_reunion_evangelistum = asistencia_reunion_evangelista(:one)
  end

  test "should get index" do
    get asistencia_reunion_evangelista_url
    assert_response :success
  end

  test "should get new" do
    get new_asistencia_reunion_evangelistum_url
    assert_response :success
  end

  test "should create asistencia_reunion_evangelistum" do
    assert_difference('AsistenciaReunionEvangelistum.count') do
      post asistencia_reunion_evangelista_url, params: { asistencia_reunion_evangelistum: { aceptados: @asistencia_reunion_evangelistum.aceptados, candidatos_bautismo: @asistencia_reunion_evangelistum.candidatos_bautismo, childrens: @asistencia_reunion_evangelistum.childrens, friends: @asistencia_reunion_evangelistum.friends, hnos_a: @asistencia_reunion_evangelistum.hnos_a, hnos_i: @asistencia_reunion_evangelistum.hnos_i, leccion: @asistencia_reunion_evangelistum.leccion, ofrenda: @asistencia_reunion_evangelistum.ofrenda, personas_en_discipulado: @asistencia_reunion_evangelistum.personas_en_discipulado, personas_ministradas: @asistencia_reunion_evangelistum.personas_ministradas, visitas: @asistencia_reunion_evangelistum.visitas } }
    end

    assert_redirected_to asistencia_reunion_evangelistum_url(AsistenciaReunionEvangelistum.last)
  end

  test "should show asistencia_reunion_evangelistum" do
    get asistencia_reunion_evangelistum_url(@asistencia_reunion_evangelistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_asistencia_reunion_evangelistum_url(@asistencia_reunion_evangelistum)
    assert_response :success
  end

  test "should update asistencia_reunion_evangelistum" do
    patch asistencia_reunion_evangelistum_url(@asistencia_reunion_evangelistum), params: { asistencia_reunion_evangelistum: { aceptados: @asistencia_reunion_evangelistum.aceptados, candidatos_bautismo: @asistencia_reunion_evangelistum.candidatos_bautismo, childrens: @asistencia_reunion_evangelistum.childrens, friends: @asistencia_reunion_evangelistum.friends, hnos_a: @asistencia_reunion_evangelistum.hnos_a, hnos_i: @asistencia_reunion_evangelistum.hnos_i, leccion: @asistencia_reunion_evangelistum.leccion, ofrenda: @asistencia_reunion_evangelistum.ofrenda, personas_en_discipulado: @asistencia_reunion_evangelistum.personas_en_discipulado, personas_ministradas: @asistencia_reunion_evangelistum.personas_ministradas, visitas: @asistencia_reunion_evangelistum.visitas } }
    assert_redirected_to asistencia_reunion_evangelistum_url(@asistencia_reunion_evangelistum)
  end

  test "should destroy asistencia_reunion_evangelistum" do
    assert_difference('AsistenciaReunionEvangelistum.count', -1) do
      delete asistencia_reunion_evangelistum_url(@asistencia_reunion_evangelistum)
    end

    assert_redirected_to asistencia_reunion_evangelista_url
  end
end
