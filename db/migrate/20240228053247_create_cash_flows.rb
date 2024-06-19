class CreateCashFlows < ActiveRecord::Migration[7.0]
  def change
    create_table :cash_flows do |t|
      t.decimal :profit_before_income_tax
      t.decimal :depreciation_on_property_plant_and_equiptments
      t.decimal :profit_on_disposal
      t.decimal :amortisation_of_prepaid_lease
      t.decimal :amortisation_of_intangible_assets
      t.decimal :interest_expense
      t.decimal :operating_profit_before_working_capital_changes
      t.decimal :inventories
      t.decimal :trade_and_other_recievables
      t.decimal :trade_and_other_payables
      t.decimal :cash_generated_from_operations
      t.decimal :tax
      t.decimal :interest_paid
      t.decimal :net_cash_generated_from_operating_activities
      t.decimal :purchase_of_property_plant_and_equiptments
      t.decimal :purchase_of_prepaid_operating_lease_rentals
      t.decimal :proceeds_from_sale_of_property_plant_and_equiptments
      t.decimal :intangible_assets
      t.decimal :interest_income
      t.decimal :net_cash_used_in_investing_activities
      t.decimal :proceeds_from_issue_of_share_capital
      t.decimal :proceeds_from_borrowing
      t.decimal :repayments_of_borrowing
      t.decimal :net_cash_generated_from_financial_activities
      t.decimal :net_decrease_in_cash_and_cash_equivalents
      t.decimal :cash_and_cash_equivalent_at_1st_january
      t.decimal :cash_and_cash_equivalent_at_31st_december
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
