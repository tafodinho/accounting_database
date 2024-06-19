require "test_helper"

class ProfitAndLossAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profit_and_loss_account = profit_and_loss_accounts(:one)
  end

  test "should get index" do
    get profit_and_loss_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_profit_and_loss_account_url
    assert_response :success
  end

  test "should create profit_and_loss_account" do
    assert_difference("ProfitAndLossAccount.count") do
      post profit_and_loss_accounts_url, params: { profit_and_loss_account: { administrative_expenses: @profit_and_loss_account.administrative_expenses, company_id: @profit_and_loss_account.company_id, cost_of_sales: @profit_and_loss_account.cost_of_sales, date_of_report: @profit_and_loss_account.date_of_report, finance_cost: @profit_and_loss_account.finance_cost, gross_profit: @profit_and_loss_account.gross_profit, net_profit_for_the_year: @profit_and_loss_account.net_profit_for_the_year, operating_profit: @profit_and_loss_account.operating_profit, other_operating_expenses: @profit_and_loss_account.other_operating_expenses, other_operating_income: @profit_and_loss_account.other_operating_income, profit_before_tax: @profit_and_loss_account.profit_before_tax, sales: @profit_and_loss_account.sales, tax: @profit_and_loss_account.tax } }
    end

    assert_redirected_to profit_and_loss_account_url(ProfitAndLossAccount.last)
  end

  test "should show profit_and_loss_account" do
    get profit_and_loss_account_url(@profit_and_loss_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_profit_and_loss_account_url(@profit_and_loss_account)
    assert_response :success
  end

  test "should update profit_and_loss_account" do
    patch profit_and_loss_account_url(@profit_and_loss_account), params: { profit_and_loss_account: { administrative_expenses: @profit_and_loss_account.administrative_expenses, company_id: @profit_and_loss_account.company_id, cost_of_sales: @profit_and_loss_account.cost_of_sales, date_of_report: @profit_and_loss_account.date_of_report, finance_cost: @profit_and_loss_account.finance_cost, gross_profit: @profit_and_loss_account.gross_profit, net_profit_for_the_year: @profit_and_loss_account.net_profit_for_the_year, operating_profit: @profit_and_loss_account.operating_profit, other_operating_expenses: @profit_and_loss_account.other_operating_expenses, other_operating_income: @profit_and_loss_account.other_operating_income, profit_before_tax: @profit_and_loss_account.profit_before_tax, sales: @profit_and_loss_account.sales, tax: @profit_and_loss_account.tax } }
    assert_redirected_to profit_and_loss_account_url(@profit_and_loss_account)
  end

  test "should destroy profit_and_loss_account" do
    assert_difference("ProfitAndLossAccount.count", -1) do
      delete profit_and_loss_account_url(@profit_and_loss_account)
    end

    assert_redirected_to profit_and_loss_accounts_url
  end
end
