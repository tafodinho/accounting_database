require "test_helper"

class AuditorReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auditor_report = auditor_reports(:one)
  end

  test "should get index" do
    get auditor_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_auditor_report_url
    assert_response :success
  end

  test "should create auditor_report" do
    assert_difference("AuditorReport.count") do
      post auditor_reports_url, params: { auditor_report: { auditor: @auditor_report.auditor, body: @auditor_report.body, company_id: @auditor_report.company_id, date_of_report: @auditor_report.date_of_report, opinion: @auditor_report.opinion, sub_title: @auditor_report.sub_title, title: @auditor_report.title } }
    end

    assert_redirected_to auditor_report_url(AuditorReport.last)
  end

  test "should show auditor_report" do
    get auditor_report_url(@auditor_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_auditor_report_url(@auditor_report)
    assert_response :success
  end

  test "should update auditor_report" do
    patch auditor_report_url(@auditor_report), params: { auditor_report: { auditor: @auditor_report.auditor, body: @auditor_report.body, company_id: @auditor_report.company_id, date_of_report: @auditor_report.date_of_report, opinion: @auditor_report.opinion, sub_title: @auditor_report.sub_title, title: @auditor_report.title } }
    assert_redirected_to auditor_report_url(@auditor_report)
  end

  test "should destroy auditor_report" do
    assert_difference("AuditorReport.count", -1) do
      delete auditor_report_url(@auditor_report)
    end

    assert_redirected_to auditor_reports_url
  end
end
