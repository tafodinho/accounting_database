require "application_system_test_case"

class BalanceSheetsTest < ApplicationSystemTestCase
  setup do
    @balance_sheet = balance_sheets(:one)
  end

  test "visiting the index" do
    visit balance_sheets_url
    assert_selector "h1", text: "Balance sheets"
  end

  test "should create balance sheet" do
    visit balance_sheets_url
    click_on "New balance sheet"

    fill_in "Borrowings", with: @balance_sheet.borrowings
    fill_in "Cash at bank and in hand", with: @balance_sheet.cash_at_bank_and_in_hand
    fill_in "Company", with: @balance_sheet.company_id
    fill_in "Current tax", with: @balance_sheet.current_tax
    fill_in "Date of report", with: @balance_sheet.date_of_report
    fill_in "Deffered tax", with: @balance_sheet.deffered_tax
    fill_in "Intangible assets", with: @balance_sheet.intangible_assets
    fill_in "Inventories", with: @balance_sheet.inventories
    fill_in "Prepaid operating lease rentals", with: @balance_sheet.prepaid_operating_lease_rentals
    fill_in "Property and equiptments", with: @balance_sheet.property_and_equiptments
    fill_in "Retained earnings", with: @balance_sheet.retained_earnings
    fill_in "Share capital", with: @balance_sheet.share_capital
    fill_in "Shareholder funds", with: @balance_sheet.shareholder_funds
    fill_in "Trade and other payables", with: @balance_sheet.trade_and_other_payables
    fill_in "Trade and other receivables", with: @balance_sheet.trade_and_other_receivables
    click_on "Create Balance sheet"

    assert_text "Balance sheet was successfully created"
    click_on "Back"
  end

  test "should update Balance sheet" do
    visit balance_sheet_url(@balance_sheet)
    click_on "Edit this balance sheet", match: :first

    fill_in "Borrowings", with: @balance_sheet.borrowings
    fill_in "Cash at bank and in hand", with: @balance_sheet.cash_at_bank_and_in_hand
    fill_in "Company", with: @balance_sheet.company_id
    fill_in "Current tax", with: @balance_sheet.current_tax
    fill_in "Date of report", with: @balance_sheet.date_of_report
    fill_in "Deffered tax", with: @balance_sheet.deffered_tax
    fill_in "Intangible assets", with: @balance_sheet.intangible_assets
    fill_in "Inventories", with: @balance_sheet.inventories
    fill_in "Prepaid operating lease rentals", with: @balance_sheet.prepaid_operating_lease_rentals
    fill_in "Property and equiptments", with: @balance_sheet.property_and_equiptments
    fill_in "Retained earnings", with: @balance_sheet.retained_earnings
    fill_in "Share capital", with: @balance_sheet.share_capital
    fill_in "Shareholder funds", with: @balance_sheet.shareholder_funds
    fill_in "Trade and other payables", with: @balance_sheet.trade_and_other_payables
    fill_in "Trade and other receivables", with: @balance_sheet.trade_and_other_receivables
    click_on "Update Balance sheet"

    assert_text "Balance sheet was successfully updated"
    click_on "Back"
  end

  test "should destroy Balance sheet" do
    visit balance_sheet_url(@balance_sheet)
    click_on "Destroy this balance sheet", match: :first

    assert_text "Balance sheet was successfully destroyed"
  end
end
