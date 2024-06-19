require "test_helper"

class BalanceSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance_sheet = balance_sheets(:one)
  end

  test "should get index" do
    get balance_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_balance_sheet_url
    assert_response :success
  end

  test "should create balance_sheet" do
    assert_difference("BalanceSheet.count") do
      post balance_sheets_url, params: { balance_sheet: { borrowings: @balance_sheet.borrowings, cash_at_bank_and_in_hand: @balance_sheet.cash_at_bank_and_in_hand, company_id: @balance_sheet.company_id, current_tax: @balance_sheet.current_tax, date_of_report: @balance_sheet.date_of_report, deffered_tax: @balance_sheet.deffered_tax, intangible_assets: @balance_sheet.intangible_assets, inventories: @balance_sheet.inventories, prepaid_operating_lease_rentals: @balance_sheet.prepaid_operating_lease_rentals, property_and_equiptments: @balance_sheet.property_and_equiptments, retained_earnings: @balance_sheet.retained_earnings, share_capital: @balance_sheet.share_capital, shareholder_funds: @balance_sheet.shareholder_funds, trade_and_other_payables: @balance_sheet.trade_and_other_payables, trade_and_other_receivables: @balance_sheet.trade_and_other_receivables } }
    end

    assert_redirected_to balance_sheet_url(BalanceSheet.last)
  end

  test "should show balance_sheet" do
    get balance_sheet_url(@balance_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_balance_sheet_url(@balance_sheet)
    assert_response :success
  end

  test "should update balance_sheet" do
    patch balance_sheet_url(@balance_sheet), params: { balance_sheet: { borrowings: @balance_sheet.borrowings, cash_at_bank_and_in_hand: @balance_sheet.cash_at_bank_and_in_hand, company_id: @balance_sheet.company_id, current_tax: @balance_sheet.current_tax, date_of_report: @balance_sheet.date_of_report, deffered_tax: @balance_sheet.deffered_tax, intangible_assets: @balance_sheet.intangible_assets, inventories: @balance_sheet.inventories, prepaid_operating_lease_rentals: @balance_sheet.prepaid_operating_lease_rentals, property_and_equiptments: @balance_sheet.property_and_equiptments, retained_earnings: @balance_sheet.retained_earnings, share_capital: @balance_sheet.share_capital, shareholder_funds: @balance_sheet.shareholder_funds, trade_and_other_payables: @balance_sheet.trade_and_other_payables, trade_and_other_receivables: @balance_sheet.trade_and_other_receivables } }
    assert_redirected_to balance_sheet_url(@balance_sheet)
  end

  test "should destroy balance_sheet" do
    assert_difference("BalanceSheet.count", -1) do
      delete balance_sheet_url(@balance_sheet)
    end

    assert_redirected_to balance_sheets_url
  end
end
