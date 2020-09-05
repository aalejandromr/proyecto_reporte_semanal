require 'test_helper'

class AsistenciaReunionEvangelistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asistencia_reunion_evangelist = asistencia_reunion_evangelists(:one)
  end

  test "should get index" do
    get asistencia_reunion_evangelists_url
    assert_response :success
  end

  test "should get new" do
    get new_asistencia_reunion_evangelist_url
    assert_response :success
  end

  test "should create asistencia_reunion_evangelist" do
    assert_difference('AsistenciaReunionEvangelist.count') do
      post asistencia_reunion_evangelists_url, params: { asistencia_reunion_evangelist: { aceptados: @asistencia_reunion_evangelist.aceptados, candidatos_bautismo: @asistencia_reunion_evangelist.candidatos_bautismo, childrens: @asistencia_reunion_evangelist.childrens, friends: @asistencia_reunion_evangelist.friends, hnos_a: @asistencia_reunion_evangelist.hnos_a, hnos_i: @asistencia_reunion_evangelist.hnos_i, leccion: @asistencia_reunion_evangelist.leccion, ofrenda: @asistencia_reunion_evangelist.ofrenda, personas_en_discipulado: @asistencia_reunion_evangelist.personas_en_discipulado, personas_ministradas: @asistencia_reunion_evangelist.personas_ministradas, rec: @asistencia_reunion_evangelist.rec, visitas: @asistencia_reunion_evangelist.visitas } }
    end

    assert_redirected_to asistencia_reunion_evangelist_url(AsistenciaReunionEvangelist.last)
  end

  test "should show asistencia_reunion_evangelist" do
    get asistencia_reunion_evangelist_url(@asistencia_reunion_evangelist)
    assert_response :success
  end

  test "should get edit" do
    get edit_asistencia_reunion_evangelist_url(@asistencia_reunion_evangelist)
    assert_response :success
  end

  test "should update asistencia_reunion_evangelist" do
    patch asistencia_reunion_evangelist_url(@asistencia_reunion_evangelist), params: { asistencia_reunion_evangelist: { aceptados: @asistencia_reunion_evangelist.aceptados, candidatos_bautismo: @asistencia_reunion_evangelist.candidatos_bautismo, childrens: @asistencia_reunion_evangelist.childrens, friends: @asistencia_reunion_evangelist.friends, hnos_a: @asistencia_reunion_evangelist.hnos_a, hnos_i: @asistencia_reunion_evangelist.hnos_i, leccion: @asistencia_reunion_evangelist.leccion, ofrenda: @asistencia_reunion_evangelist.ofrenda, personas_en_discipulado: @asistencia_reunion_evangelist.personas_en_discipulado, personas_ministradas: @asistencia_reunion_evangelist.personas_ministradas, rec: @asistencia_reunion_evangelist.rec, visitas: @asistencia_reunion_evangelist.visitas } }
    assert_redirected_to asistencia_reunion_evangelist_url(@asistencia_reunion_evangelist)
  end

  test "should destroy asistencia_reunion_evangelist" do
    assert_difference('AsistenciaReunionEvangelist.count', -1) do
      delete asistencia_reunion_evangelist_url(@asistencia_reunion_evangelist)
    end

    assert_redirected_to asistencia_reunion_evangelists_url
  end
end
