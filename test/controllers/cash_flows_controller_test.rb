require "test_helper"

class CashFlowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cash_flow = cash_flows(:one)
  end

  test "should get index" do
    get cash_flows_url
    assert_response :success
  end

  test "should get new" do
    get new_cash_flow_url
    assert_response :success
  end

  test "should create cash_flow" do
    assert_difference("CashFlow.count") do
      post cash_flows_url, params: { cash_flow: { amortisation_of_intangible_assets: @cash_flow.amortisation_of_intangible_assets, amortisation_of_prepaid_lease: @cash_flow.amortisation_of_prepaid_lease, cash_and_cash_equivalent_at_1st_january: @cash_flow.cash_and_cash_equivalent_at_1st_january, cash_and_cash_equivalent_at_31st_december: @cash_flow.cash_and_cash_equivalent_at_31st_december, cash_generated_from_operations: @cash_flow.cash_generated_from_operations, company_id: @cash_flow.company_id, depreciation_on_property_plant_and_equiptments: @cash_flow.depreciation_on_property_plant_and_equiptments, intangible_assets: @cash_flow.intangible_assets, interest_expense: @cash_flow.interest_expense, interest_income: @cash_flow.interest_income, interest_paid: @cash_flow.interest_paid, inventories: @cash_flow.inventories, net_cash_generated_from_financial_activities: @cash_flow.net_cash_generated_from_financial_activities, net_cash_generated_from_operating_activities: @cash_flow.net_cash_generated_from_operating_activities, net_cash_used_in_investing_activities: @cash_flow.net_cash_used_in_investing_activities, net_decrease_in_cash_and_cash_equivalents: @cash_flow.net_decrease_in_cash_and_cash_equivalents, operating_profit_before_working_capital_changes: @cash_flow.operating_profit_before_working_capital_changes, proceeds_from_borrowing: @cash_flow.proceeds_from_borrowing, proceeds_from_issue_of_share_capital: @cash_flow.proceeds_from_issue_of_share_capital, proceeds_from_sale_of_property_plant_and_equiptments: @cash_flow.proceeds_from_sale_of_property_plant_and_equiptments, profit_before_income_tax: @cash_flow.profit_before_income_tax, profit_on_disposal: @cash_flow.profit_on_disposal, purchase_of_prepaid_operating_lease_rentals: @cash_flow.purchase_of_prepaid_operating_lease_rentals, purchase_of_property_plant_and_equiptments: @cash_flow.purchase_of_property_plant_and_equiptments, repayments_of_borrowing: @cash_flow.repayments_of_borrowing, tax: @cash_flow.tax, trade_and_other_payables: @cash_flow.trade_and_other_payables, trade_and_other_recievables: @cash_flow.trade_and_other_recievables } }
    end

    assert_redirected_to cash_flow_url(CashFlow.last)
  end

  test "should show cash_flow" do
    get cash_flow_url(@cash_flow)
    assert_response :success
  end

  test "should get edit" do
    get edit_cash_flow_url(@cash_flow)
    assert_response :success
  end

  test "should update cash_flow" do
    patch cash_flow_url(@cash_flow), params: { cash_flow: { amortisation_of_intangible_assets: @cash_flow.amortisation_of_intangible_assets, amortisation_of_prepaid_lease: @cash_flow.amortisation_of_prepaid_lease, cash_and_cash_equivalent_at_1st_january: @cash_flow.cash_and_cash_equivalent_at_1st_january, cash_and_cash_equivalent_at_31st_december: @cash_flow.cash_and_cash_equivalent_at_31st_december, cash_generated_from_operations: @cash_flow.cash_generated_from_operations, company_id: @cash_flow.company_id, depreciation_on_property_plant_and_equiptments: @cash_flow.depreciation_on_property_plant_and_equiptments, intangible_assets: @cash_flow.intangible_assets, interest_expense: @cash_flow.interest_expense, interest_income: @cash_flow.interest_income, interest_paid: @cash_flow.interest_paid, inventories: @cash_flow.inventories, net_cash_generated_from_financial_activities: @cash_flow.net_cash_generated_from_financial_activities, net_cash_generated_from_operating_activities: @cash_flow.net_cash_generated_from_operating_activities, net_cash_used_in_investing_activities: @cash_flow.net_cash_used_in_investing_activities, net_decrease_in_cash_and_cash_equivalents: @cash_flow.net_decrease_in_cash_and_cash_equivalents, operating_profit_before_working_capital_changes: @cash_flow.operating_profit_before_working_capital_changes, proceeds_from_borrowing: @cash_flow.proceeds_from_borrowing, proceeds_from_issue_of_share_capital: @cash_flow.proceeds_from_issue_of_share_capital, proceeds_from_sale_of_property_plant_and_equiptments: @cash_flow.proceeds_from_sale_of_property_plant_and_equiptments, profit_before_income_tax: @cash_flow.profit_before_income_tax, profit_on_disposal: @cash_flow.profit_on_disposal, purchase_of_prepaid_operating_lease_rentals: @cash_flow.purchase_of_prepaid_operating_lease_rentals, purchase_of_property_plant_and_equiptments: @cash_flow.purchase_of_property_plant_and_equiptments, repayments_of_borrowing: @cash_flow.repayments_of_borrowing, tax: @cash_flow.tax, trade_and_other_payables: @cash_flow.trade_and_other_payables, trade_and_other_recievables: @cash_flow.trade_and_other_recievables } }
    assert_redirected_to cash_flow_url(@cash_flow)
  end

  test "should destroy cash_flow" do
    assert_difference("CashFlow.count", -1) do
      delete cash_flow_url(@cash_flow)
    end

    assert_redirected_to cash_flows_url
  end
end
