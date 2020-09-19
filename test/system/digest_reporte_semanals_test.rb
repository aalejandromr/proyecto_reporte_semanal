require "application_system_test_case"

class DigestReporteSemanalsTest < ApplicationSystemTestCase
  setup do
    @digest_reporte_semanal = digest_reporte_semanals(:one)
  end

  test "visiting the index" do
    visit digest_reporte_semanals_url
    assert_selector "h1", text: "Digest Reporte Semanals"
  end

  test "creating a Digest reporte semanal" do
    visit digest_reporte_semanals_url
    click_on "New Digest Reporte Semanal"

    click_on "Create Digest reporte semanal"

    assert_text "Digest reporte semanal was successfully created"
    click_on "Back"
  end

  test "updating a Digest reporte semanal" do
    visit digest_reporte_semanals_url
    click_on "Edit", match: :first

    click_on "Update Digest reporte semanal"

    assert_text "Digest reporte semanal was successfully updated"
    click_on "Back"
  end

  test "destroying a Digest reporte semanal" do
    visit digest_reporte_semanals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Digest reporte semanal was successfully destroyed"
  end
end
