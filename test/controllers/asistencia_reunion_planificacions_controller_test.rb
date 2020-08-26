require 'test_helper'

class AsistenciaReunionPlanificacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asistencia_reunion_planificacion = asistencia_reunion_planificacions(:one)
  end

  test "should get index" do
    get asistencia_reunion_planificacions_url
    assert_response :success
  end

  test "should get new" do
    get new_asistencia_reunion_planificacion_url
    assert_response :success
  end

  test "should create asistencia_reunion_planificacion" do
    assert_difference('AsistenciaReunionPlanificacion.count') do
      post asistencia_reunion_planificacions_url, params: { asistencia_reunion_planificacion: { hora_reunion: @asistencia_reunion_planificacion.hora_reunion, meta_amigos_alcanzada: @asistencia_reunion_planificacion.meta_amigos_alcanzada, meta_amigos_establecida: @asistencia_reunion_planificacion.meta_amigos_establecida, miembros_apoyo: @asistencia_reunion_planificacion.miembros_apoyo, miembros_nucleo: @asistencia_reunion_planificacion.miembros_nucleo, ofrenda: @asistencia_reunion_planificacion.ofrenda, reflexion_semana: @asistencia_reunion_planificacion.reflexion_semana } }
    end

    assert_redirected_to asistencia_reunion_planificacion_url(AsistenciaReunionPlanificacion.last)
  end

  test "should show asistencia_reunion_planificacion" do
    get asistencia_reunion_planificacion_url(@asistencia_reunion_planificacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_asistencia_reunion_planificacion_url(@asistencia_reunion_planificacion)
    assert_response :success
  end

  test "should update asistencia_reunion_planificacion" do
    patch asistencia_reunion_planificacion_url(@asistencia_reunion_planificacion), params: { asistencia_reunion_planificacion: { hora_reunion: @asistencia_reunion_planificacion.hora_reunion, meta_amigos_alcanzada: @asistencia_reunion_planificacion.meta_amigos_alcanzada, meta_amigos_establecida: @asistencia_reunion_planificacion.meta_amigos_establecida, miembros_apoyo: @asistencia_reunion_planificacion.miembros_apoyo, miembros_nucleo: @asistencia_reunion_planificacion.miembros_nucleo, ofrenda: @asistencia_reunion_planificacion.ofrenda, reflexion_semana: @asistencia_reunion_planificacion.reflexion_semana } }
    assert_redirected_to asistencia_reunion_planificacion_url(@asistencia_reunion_planificacion)
  end

  test "should destroy asistencia_reunion_planificacion" do
    assert_difference('AsistenciaReunionPlanificacion.count', -1) do
      delete asistencia_reunion_planificacion_url(@asistencia_reunion_planificacion)
    end

    assert_redirected_to asistencia_reunion_planificacions_url
  end
end
