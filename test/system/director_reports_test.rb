require "application_system_test_case"

class DirectorReportsTest < ApplicationSystemTestCase
  setup do
    @director_report = director_reports(:one)
  end

  test "visiting the index" do
    visit director_reports_url
    assert_selector "h1", text: "Director reports"
  end

  test "should create director report" do
    visit director_reports_url
    click_on "New director report"

    fill_in "Body", with: @director_report.body
    fill_in "Company id", with: @director_report.company_id_id
    fill_in "Date of report", with: @director_report.date_of_report
    fill_in "Director 1", with: @director_report.director_1
    fill_in "Director 2", with: @director_report.director_2
    click_on "Create Director report"

    assert_text "Director report was successfully created"
    click_on "Back"
  end

  test "should update Director report" do
    visit director_report_url(@director_report)
    click_on "Edit this director report", match: :first

    fill_in "Body", with: @director_report.body
    fill_in "Company id", with: @director_report.company_id_id
    fill_in "Date of report", with: @director_report.date_of_report
    fill_in "Director 1", with: @director_report.director_1
    fill_in "Director 2", with: @director_report.director_2
    click_on "Update Director report"

    assert_text "Director report was successfully updated"
    click_on "Back"
  end

  test "should destroy Director report" do
    visit director_report_url(@director_report)
    click_on "Destroy this director report", match: :first

    assert_text "Director report was successfully destroyed"
  end
end
