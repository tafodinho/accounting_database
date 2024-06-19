require "test_helper"

class DirectorReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @director_report = director_reports(:one)
  end

  test "should get index" do
    get director_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_director_report_url
    assert_response :success
  end

  test "should create director_report" do
    assert_difference("DirectorReport.count") do
      post director_reports_url, params: { director_report: { body: @director_report.body, company_id_id: @director_report.company_id_id, date_of_report: @director_report.date_of_report, director_1: @director_report.director_1, director_2: @director_report.director_2 } }
    end

    assert_redirected_to director_report_url(DirectorReport.last)
  end

  test "should show director_report" do
    get director_report_url(@director_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_director_report_url(@director_report)
    assert_response :success
  end

  test "should update director_report" do
    patch director_report_url(@director_report), params: { director_report: { body: @director_report.body, company_id_id: @director_report.company_id_id, date_of_report: @director_report.date_of_report, director_1: @director_report.director_1, director_2: @director_report.director_2 } }
    assert_redirected_to director_report_url(@director_report)
  end

  test "should destroy director_report" do
    assert_difference("DirectorReport.count", -1) do
      delete director_report_url(@director_report)
    end

    assert_redirected_to director_reports_url
  end
end
