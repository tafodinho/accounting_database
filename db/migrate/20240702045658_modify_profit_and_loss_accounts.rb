class ModifyProfitAndLossAccounts < ActiveRecord::Migration[7.0]
  def change
      remove_column :profit_and_loss_accounts, :sales
      remove_column :profit_and_loss_accounts, :cost_of_sales
      remove_column :profit_and_loss_accounts, :gross_profit
      remove_column :profit_and_loss_accounts, :other_operating_income
      remove_column :profit_and_loss_accounts, :administrative_expenses
      remove_column :profit_and_loss_accounts, :other_operating_expenses
      remove_column :profit_and_loss_accounts, :operating_profit
      remove_column :profit_and_loss_accounts, :finance_cost
      remove_column :profit_and_loss_accounts, :profit_before_tax
      remove_column :profit_and_loss_accounts, :tax
      remove_column :profit_and_loss_accounts, :net_profit_for_the_year

      add_column :profit_and_loss_accounts, :sales_of_goods, :decimal
      add_column :profit_and_loss_accounts, :purchases_of_goods, :decimal
      add_column :profit_and_loss_accounts, :variation_stocks_of_goods, :decimal
      add_column :profit_and_loss_accounts, :gross_profit, :decimal
      add_column :profit_and_loss_accounts, :sales_of_manufactured_products, :decimal
      add_column :profit_and_loss_accounts, :works_and_services_sold, :decimal
      add_column :profit_and_loss_accounts, :accessory_revenues, :decimal
      add_column :profit_and_loss_accounts, :turnover, :decimal
      add_column :profit_and_loss_accounts, :stored_production, :decimal
      add_column :profit_and_loss_accounts, :self_constructed_assets, :decimal
      add_column :profit_and_loss_accounts, :operating_subvention, :decimal
      add_column :profit_and_loss_accounts, :other_revenues, :decimal
      add_column :profit_and_loss_accounts, :transfer_of_operating_expenses, :decimal
      add_column :profit_and_loss_accounts, :purchases_of_raw_material_and_related_stores, :decimal
      add_column :profit_and_loss_accounts, :variation_of_stock_of_raw_materials_and_related_store, :decimal
      add_column :profit_and_loss_accounts, :other_purchases, :decimal
      add_column :profit_and_loss_accounts, :variation_of_stock_of_other_supplies, :decimal
      add_column :profit_and_loss_accounts, :transport, :decimal
      add_column :profit_and_loss_accounts, :external_services, :decimal
      add_column :profit_and_loss_accounts, :taxes_and_rates, :decimal
      add_column :profit_and_loss_accounts, :other_expenses, :decimal
      add_column :profit_and_loss_accounts, :value_added, :decimal
      add_column :profit_and_loss_accounts, :personal_expenses, :decimal
      add_column :profit_and_loss_accounts, :gross_operating_surplus, :decimal
      add_column :profit_and_loss_accounts, :depreciations_impairment_provision_and_investment_subventions_written_back, :decimal
      add_column :profit_and_loss_accounts, :depreciations_impairment_losses_and_provision_expenses, :decimal
      add_column :profit_and_loss_accounts, :operating_profit_and_loss, :decimal
      add_column :profit_and_loss_accounts, :financial_and_related_revenues, :decimal
      add_column :profit_and_loss_accounts, :financial_impairment_and_provision_written_back, :decimal
      add_column :profit_and_loss_accounts, :transfer_of_financial_expenses, :decimal
      add_column :profit_and_loss_accounts, :financial_and_related_expenses, :decimal
      add_column :profit_and_loss_accounts, :financial_impairment_and_provision_expenses, :decimal
      add_column :profit_and_loss_accounts, :financial_profit_and_loss, :decimal
      add_column :profit_and_loss_accounts, :ordinary_activity_result, :decimal
      add_column :profit_and_loss_accounts, :revenues_from_disposals_of_fixed_assets, :decimal
      add_column :profit_and_loss_accounts, :other_revenues_OOA, :decimal
      add_column :profit_and_loss_accounts, :values_of_disposals_of_fixed_assets, :decimal
      add_column :profit_and_loss_accounts, :other_expenses_OOA, :decimal
      add_column :profit_and_loss_accounts, :OOA_result, :decimal
      add_column :profit_and_loss_accounts, :employees_profit_sharing_scheme, :decimal
      add_column :profit_and_loss_accounts, :income_tax, :decimal
      add_column :profit_and_loss_accounts, :net_income, :decimal
  end
end
