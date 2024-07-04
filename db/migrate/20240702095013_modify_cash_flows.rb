class ModifyCashFlows < ActiveRecord::Migration[7.0]
  def change
      remove_column :cash_flows, :profit_before_income_tax
      remove_column :cash_flows, :depreciation_on_property_plant_and_equiptments
      remove_column :cash_flows, :profit_on_disposal
      remove_column :cash_flows, :amortisation_of_prepaid_lease
      remove_column :cash_flows, :amortisation_of_intangible_assets
      remove_column :cash_flows, :interest_expense
      remove_column :cash_flows, :operating_profit_before_working_capital_changes
      remove_column :cash_flows, :inventories
      remove_column :cash_flows, :trade_and_other_recievables
      remove_column :cash_flows, :trade_and_other_payables
      remove_column :cash_flows, :cash_generated_from_operations
      remove_column :cash_flows, :tax
      remove_column :cash_flows, :interest_paid
      remove_column :cash_flows, :net_cash_generated_from_operating_activities
      remove_column :cash_flows, :purchase_of_property_plant_and_equiptments
      remove_column :cash_flows, :purchase_of_prepaid_operating_lease_rentals
      remove_column :cash_flows, :proceeds_from_sale_of_property_plant_and_equiptments
      remove_column :cash_flows, :intangible_assets
      remove_column :cash_flows, :interest_income
      remove_column :cash_flows, :net_cash_used_in_investing_activities
      remove_column :cash_flows, :proceeds_from_issue_of_share_capital
      remove_column :cash_flows, :proceeds_from_borrowing
      remove_column :cash_flows, :repayments_of_borrowing
      remove_column :cash_flows, :net_cash_generated_from_financial_activities
      remove_column :cash_flows, :net_decrease_in_cash_and_cash_equivalents
      remove_column :cash_flows, :cash_and_cash_equivalent_at_1st_january
      remove_column :cash_flows, :cash_and_cash_equivalent_at_31st_december

      add_column :cash_flows, :net_cash_as_at_january_1st, :decimal
      add_column :cash_flows, :global_self_financing_capacity, :decimal
      add_column :cash_flows, :OOA_current_assets, :decimal
      add_column :cash_flows, :variation_of_stocks, :decimal
      add_column :cash_flows, :variation_of_customers_and_other_debtors, :decimal
      add_column :cash_flows, :variation_of_current_liabilities, :decimal
      add_column :cash_flows, :net_cash_flow_from_operating_activities, :decimal
      add_column :cash_flows, :cash_outflow_from_acquisition_of_financial_fixed_assets, :decimal
      add_column :cash_flows, :cash_outflow_from_acquisition_of_intangible_fixed_assets, :decimal
      add_column :cash_flows, :cash_outflow_from_acquisition_of_tangible_fixed_assets, :decimal
      add_column :cash_flows, :cash_inflow_from_disposal_of_intangible_and_tangible_fixed_assets, :decimal
      add_column :cash_flows, :cash_inflow_from_disposal_of_financial_fixed_assets, :decimal
      add_column :cash_flows, :net_cash_flow_from_investing_activities, :decimal
      add_column :cash_flows, :increase_of_capacity_by_new_contributions, :decimal
      add_column :cash_flows, :investing_subventions_received, :decimal
      add_column :cash_flows, :reductions_in_capital, :decimal
      add_column :cash_flows, :divedents_paid, :decimal
      add_column :cash_flows, :net_cash_flows_from_owners_equity, :decimal
      add_column :cash_flows, :acquisition_of_loans, :decimal
      add_column :cash_flows, :reimbursements_of_loans_and_other_financial_debts, :decimal
      add_column :cash_flows, :net_cash_flows_from_creditors_equity, :decimal
      add_column :cash_flows, :net_cash_flows_from_financing_activities, :decimal
      add_column :cash_flows, :variation_of_net_cash_for_the_year, :decimal
      add_column :cash_flows, :net_cash_as_at_december_31st, :decimal
  end
end
