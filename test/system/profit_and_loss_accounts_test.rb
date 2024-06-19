require "application_system_test_case"

class ProfitAndLossAccountsTest < ApplicationSystemTestCase
  setup do
    @profit_and_loss_account = profit_and_loss_accounts(:one)
  end

  test "visiting the index" do
    visit profit_and_loss_accounts_url
    assert_selector "h1", text: "Profit and loss accounts"
  end

  test "should create profit and loss account" do
    visit profit_and_loss_accounts_url
    click_on "New profit and loss account"

    fill_in "Administrative expenses", with: @profit_and_loss_account.administrative_expenses
    fill_in "Company", with: @profit_and_loss_account.company_id
    fill_in "Cost of sales", with: @profit_and_loss_account.cost_of_sales
    fill_in "Date of report", with: @profit_and_loss_account.date_of_report
    fill_in "Finance cost", with: @profit_and_loss_account.finance_cost
    fill_in "Gross profit", with: @profit_and_loss_account.gross_profit
    fill_in "Net profit for the year", with: @profit_and_loss_account.net_profit_for_the_year
    fill_in "Operating profit", with: @profit_and_loss_account.operating_profit
    fill_in "Other operating expenses", with: @profit_and_loss_account.other_operating_expenses
    fill_in "Other operating income", with: @profit_and_loss_account.other_operating_income
    fill_in "Profit before tax", with: @profit_and_loss_account.profit_before_tax
    fill_in "Sales", with: @profit_and_loss_account.sales
    fill_in "Tax", with: @profit_and_loss_account.tax
    click_on "Create Profit and loss account"

    assert_text "Profit and loss account was successfully created"
    click_on "Back"
  end

  test "should update Profit and loss account" do
    visit profit_and_loss_account_url(@profit_and_loss_account)
    click_on "Edit this profit and loss account", match: :first

    fill_in "Administrative expenses", with: @profit_and_loss_account.administrative_expenses
    fill_in "Company", with: @profit_and_loss_account.company_id
    fill_in "Cost of sales", with: @profit_and_loss_account.cost_of_sales
    fill_in "Date of report", with: @profit_and_loss_account.date_of_report
    fill_in "Finance cost", with: @profit_and_loss_account.finance_cost
    fill_in "Gross profit", with: @profit_and_loss_account.gross_profit
    fill_in "Net profit for the year", with: @profit_and_loss_account.net_profit_for_the_year
    fill_in "Operating profit", with: @profit_and_loss_account.operating_profit
    fill_in "Other operating expenses", with: @profit_and_loss_account.other_operating_expenses
    fill_in "Other operating income", with: @profit_and_loss_account.other_operating_income
    fill_in "Profit before tax", with: @profit_and_loss_account.profit_before_tax
    fill_in "Sales", with: @profit_and_loss_account.sales
    fill_in "Tax", with: @profit_and_loss_account.tax
    click_on "Update Profit and loss account"

    assert_text "Profit and loss account was successfully updated"
    click_on "Back"
  end

  test "should destroy Profit and loss account" do
    visit profit_and_loss_account_url(@profit_and_loss_account)
    click_on "Destroy this profit and loss account", match: :first

    assert_text "Profit and loss account was successfully destroyed"
  end
end
