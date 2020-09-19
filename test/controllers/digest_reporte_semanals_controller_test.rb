require 'test_helper'

class DigestReporteSemanalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @digest_reporte_semanal = digest_reporte_semanals(:one)
  end

  test "should get index" do
    get digest_reporte_semanals_url
    assert_response :success
  end

  test "should get new" do
    get new_digest_reporte_semanal_url
    assert_response :success
  end

  test "should create digest_reporte_semanal" do
    assert_difference('DigestReporteSemanal.count') do
      post digest_reporte_semanals_url, params: { digest_reporte_semanal: {  } }
    end

    assert_redirected_to digest_reporte_semanal_url(DigestReporteSemanal.last)
  end

  test "should show digest_reporte_semanal" do
    get digest_reporte_semanal_url(@digest_reporte_semanal)
    assert_response :success
  end

  test "should get edit" do
    get edit_digest_reporte_semanal_url(@digest_reporte_semanal)
    assert_response :success
  end

  test "should update digest_reporte_semanal" do
    patch digest_reporte_semanal_url(@digest_reporte_semanal), params: { digest_reporte_semanal: {  } }
    assert_redirected_to digest_reporte_semanal_url(@digest_reporte_semanal)
  end

  test "should destroy digest_reporte_semanal" do
    assert_difference('DigestReporteSemanal.count', -1) do
      delete digest_reporte_semanal_url(@digest_reporte_semanal)
    end

    assert_redirected_to digest_reporte_semanals_url
  end
end
