require "application_system_test_case"

class AuditorReportsTest < ApplicationSystemTestCase
  setup do
    @auditor_report = auditor_reports(:one)
  end

  test "visiting the index" do
    visit auditor_reports_url
    assert_selector "h1", text: "Auditor reports"
  end

  test "should create auditor report" do
    visit auditor_reports_url
    click_on "New auditor report"

    fill_in "Auditor", with: @auditor_report.auditor
    fill_in "Body", with: @auditor_report.body
    fill_in "Company", with: @auditor_report.company_id
    fill_in "Date of report", with: @auditor_report.date_of_report
    fill_in "Opinion", with: @auditor_report.opinion
    fill_in "Sub title", with: @auditor_report.sub_title
    fill_in "Title", with: @auditor_report.title
    click_on "Create Auditor report"

    assert_text "Auditor report was successfully created"
    click_on "Back"
  end

  test "should update Auditor report" do
    visit auditor_report_url(@auditor_report)
    click_on "Edit this auditor report", match: :first

    fill_in "Auditor", with: @auditor_report.auditor
    fill_in "Body", with: @auditor_report.body
    fill_in "Company", with: @auditor_report.company_id
    fill_in "Date of report", with: @auditor_report.date_of_report
    fill_in "Opinion", with: @auditor_report.opinion
    fill_in "Sub title", with: @auditor_report.sub_title
    fill_in "Title", with: @auditor_report.title
    click_on "Update Auditor report"

    assert_text "Auditor report was successfully updated"
    click_on "Back"
  end

  test "should destroy Auditor report" do
    visit auditor_report_url(@auditor_report)
    click_on "Destroy this auditor report", match: :first

    assert_text "Auditor report was successfully destroyed"
  end
end
