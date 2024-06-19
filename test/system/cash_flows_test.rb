require "application_system_test_case"

class CashFlowsTest < ApplicationSystemTestCase
  setup do
    @cash_flow = cash_flows(:one)
  end

  test "visiting the index" do
    visit cash_flows_url
    assert_selector "h1", text: "Cash flows"
  end

  test "should create cash flow" do
    visit cash_flows_url
    click_on "New cash flow"

    fill_in "Amortisation of intangible assets", with: @cash_flow.amortisation_of_intangible_assets
    fill_in "Amortisation of prepaid lease", with: @cash_flow.amortisation_of_prepaid_lease
    fill_in "Cash and cash equivalent at 1st january", with: @cash_flow.cash_and_cash_equivalent_at_1st_january
    fill_in "Cash and cash equivalent at 31st december", with: @cash_flow.cash_and_cash_equivalent_at_31st_december
    fill_in "Cash generated from operations", with: @cash_flow.cash_generated_from_operations
    fill_in "Company", with: @cash_flow.company_id
    fill_in "Depreciation on property plant and equiptments", with: @cash_flow.depreciation_on_property_plant_and_equiptments
    fill_in "Intangible assets", with: @cash_flow.intangible_assets
    fill_in "Interest expense", with: @cash_flow.interest_expense
    fill_in "Interest income", with: @cash_flow.interest_income
    fill_in "Interest paid", with: @cash_flow.interest_paid
    fill_in "Inventories", with: @cash_flow.inventories
    fill_in "Net cash generated from financial activities", with: @cash_flow.net_cash_generated_from_financial_activities
    fill_in "Net cash generated from operating activities", with: @cash_flow.net_cash_generated_from_operating_activities
    fill_in "Net cash used in investing activities", with: @cash_flow.net_cash_used_in_investing_activities
    fill_in "Net decrease in cash and cash equivalents", with: @cash_flow.net_decrease_in_cash_and_cash_equivalents
    fill_in "Operating profit before working capital changes", with: @cash_flow.operating_profit_before_working_capital_changes
    fill_in "Proceeds from borrowing", with: @cash_flow.proceeds_from_borrowing
    fill_in "Proceeds from issue of share capital", with: @cash_flow.proceeds_from_issue_of_share_capital
    fill_in "Proceeds from sale of property plant and equiptments", with: @cash_flow.proceeds_from_sale_of_property_plant_and_equiptments
    fill_in "Profit before income tax", with: @cash_flow.profit_before_income_tax
    fill_in "Profit on disposal", with: @cash_flow.profit_on_disposal
    fill_in "Purchase of prepaid operating lease rentals", with: @cash_flow.purchase_of_prepaid_operating_lease_rentals
    fill_in "Purchase of property plant and equiptments", with: @cash_flow.purchase_of_property_plant_and_equiptments
    fill_in "Repayments of borrowing", with: @cash_flow.repayments_of_borrowing
    fill_in "Tax", with: @cash_flow.tax
    fill_in "Trade and other payables", with: @cash_flow.trade_and_other_payables
    fill_in "Trade and other recievables", with: @cash_flow.trade_and_other_recievables
    click_on "Create Cash flow"

    assert_text "Cash flow was successfully created"
    click_on "Back"
  end

  test "should update Cash flow" do
    visit cash_flow_url(@cash_flow)
    click_on "Edit this cash flow", match: :first

    fill_in "Amortisation of intangible assets", with: @cash_flow.amortisation_of_intangible_assets
    fill_in "Amortisation of prepaid lease", with: @cash_flow.amortisation_of_prepaid_lease
    fill_in "Cash and cash equivalent at 1st january", with: @cash_flow.cash_and_cash_equivalent_at_1st_january
    fill_in "Cash and cash equivalent at 31st december", with: @cash_flow.cash_and_cash_equivalent_at_31st_december
    fill_in "Cash generated from operations", with: @cash_flow.cash_generated_from_operations
    fill_in "Company", with: @cash_flow.company_id
    fill_in "Depreciation on property plant and equiptments", with: @cash_flow.depreciation_on_property_plant_and_equiptments
    fill_in "Intangible assets", with: @cash_flow.intangible_assets
    fill_in "Interest expense", with: @cash_flow.interest_expense
    fill_in "Interest income", with: @cash_flow.interest_income
    fill_in "Interest paid", with: @cash_flow.interest_paid
    fill_in "Inventories", with: @cash_flow.inventories
    fill_in "Net cash generated from financial activities", with: @cash_flow.net_cash_generated_from_financial_activities
    fill_in "Net cash generated from operating activities", with: @cash_flow.net_cash_generated_from_operating_activities
    fill_in "Net cash used in investing activities", with: @cash_flow.net_cash_used_in_investing_activities
    fill_in "Net decrease in cash and cash equivalents", with: @cash_flow.net_decrease_in_cash_and_cash_equivalents
    fill_in "Operating profit before working capital changes", with: @cash_flow.operating_profit_before_working_capital_changes
    fill_in "Proceeds from borrowing", with: @cash_flow.proceeds_from_borrowing
    fill_in "Proceeds from issue of share capital", with: @cash_flow.proceeds_from_issue_of_share_capital
    fill_in "Proceeds from sale of property plant and equiptments", with: @cash_flow.proceeds_from_sale_of_property_plant_and_equiptments
    fill_in "Profit before income tax", with: @cash_flow.profit_before_income_tax
    fill_in "Profit on disposal", with: @cash_flow.profit_on_disposal
    fill_in "Purchase of prepaid operating lease rentals", with: @cash_flow.purchase_of_prepaid_operating_lease_rentals
    fill_in "Purchase of property plant and equiptments", with: @cash_flow.purchase_of_property_plant_and_equiptments
    fill_in "Repayments of borrowing", with: @cash_flow.repayments_of_borrowing
    fill_in "Tax", with: @cash_flow.tax
    fill_in "Trade and other payables", with: @cash_flow.trade_and_other_payables
    fill_in "Trade and other recievables", with: @cash_flow.trade_and_other_recievables
    click_on "Update Cash flow"

    assert_text "Cash flow was successfully updated"
    click_on "Back"
  end

  test "should destroy Cash flow" do
    visit cash_flow_url(@cash_flow)
    click_on "Destroy this cash flow", match: :first

    assert_text "Cash flow was successfully destroyed"
  end
end
