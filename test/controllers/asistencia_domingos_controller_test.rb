require 'test_helper'

class AsistenciaDomingosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asistencia_domingo = asistencia_domingos(:one)
  end

  test "should get index" do
    get asistencia_domingos_url
    assert_response :success
  end

  test "should get new" do
    get new_asistencia_domingo_url
    assert_response :success
  end

  test "should create asistencia_domingo" do
    assert_difference('AsistenciaDomingo.count') do
      post asistencia_domingos_url, params: { asistencia_domingo: { childrens: @asistencia_domingo.childrens, friends: @asistencia_domingo.friends, hnos_a: @asistencia_domingo.hnos_a, hnos_i: @asistencia_domingo.hnos_i } }
    end

    assert_redirected_to asistencia_domingo_url(AsistenciaDomingo.last)
  end

  test "should show asistencia_domingo" do
    get asistencia_domingo_url(@asistencia_domingo)
    assert_response :success
  end

  test "should get edit" do
    get edit_asistencia_domingo_url(@asistencia_domingo)
    assert_response :success
  end

  test "should update asistencia_domingo" do
    patch asistencia_domingo_url(@asistencia_domingo), params: { asistencia_domingo: { childrens: @asistencia_domingo.childrens, friends: @asistencia_domingo.friends, hnos_a: @asistencia_domingo.hnos_a, hnos_i: @asistencia_domingo.hnos_i } }
    assert_redirected_to asistencia_domingo_url(@asistencia_domingo)
  end

  test "should destroy asistencia_domingo" do
    assert_difference('AsistenciaDomingo.count', -1) do
      delete asistencia_domingo_url(@asistencia_domingo)
    end

    assert_redirected_to asistencia_domingos_url
  end
end
