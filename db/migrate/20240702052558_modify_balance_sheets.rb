class ModifyBalanceSheets < ActiveRecord::Migration[7.0]
  def change
      remove_column :balance_sheets, :share_capital
      remove_column :balance_sheets, :retained_earnings
      remove_column :balance_sheets, :shareholder_funds
      remove_column :balance_sheets, :borrowings
      remove_column :balance_sheets, :property_and_equiptments
      remove_column :balance_sheets, :prepaid_operating_lease_rentals
      remove_column :balance_sheets, :intangible_assets
      remove_column :balance_sheets, :deffered_tax
      remove_column :balance_sheets, :inventories
      remove_column :balance_sheets, :trade_and_other_receivables
      remove_column :balance_sheets, :cash_at_bank_and_in_hand
      remove_column :balance_sheets, :trade_and_other_payables
      remove_column :balance_sheets, :current_tax

      add_column :balance_sheets, :development_and_prospection_expenses, :decimal
      add_column :balance_sheets, :patents_licenses_software_and_similar_right, :decimal
      add_column :balance_sheets, :goodwill_and_leasehold_right, :decimal
      add_column :balance_sheets, :other_intangible_fixed_assets,:decimal
      add_column :balance_sheets, :land, :decimal
      add_column :balance_sheets, :building, :decimal
      add_column :balance_sheets, :fittings_fixtures_and_installations, :decimal
      add_column :balance_sheets, :equiptment_furniture_and_livestock_assets, :decimal
      add_column :balance_sheets, :transport_equipment, :decimal
      add_column :balance_sheets, :advances_and_payments_on_accounts_for_fixed_assets, :decimal
      add_column :balance_sheets, :equity_and_securities, :decimal
      add_column :balance_sheets, :other_financial_fixed_assets, :decimal
      add_column :balance_sheets, :total_fixed_assets, :decimal
      add_column :balance_sheets, :OOA_current_assets, :decimal
      add_column :balance_sheets, :stock_and_stock_in_process, :decimal
      add_column :balance_sheets, :supplies_and_advances_paid, :decimal
      add_column :balance_sheets, :customers, :decimal
      add_column :balance_sheets, :other_debtors, :decimal
      add_column :balance_sheets, :total_current_assets, :decimal
      add_column :balance_sheets, :marketable_securities, :decimal
      add_column :balance_sheets, :values_to_be_collected, :decimal
      add_column :balance_sheets, :banks_giro_banks_cash_and_related_items, :decimal
      add_column :balance_sheets, :total_cash_assets, :decimal
      add_column :balance_sheets, :probable_exchange_loss, :decimal
      add_column :balance_sheets, :assets_grand_total, :decimal
      # liabilities
      add_column :balance_sheets, :capital, :decimal
      add_column :balance_sheets, :shareholders_uncalledup_capital, :decimal
      add_column :balance_sheets, :premiums_related_to_share_capital, :decimal
      add_column :balance_sheets, :revaluation_variance, :decimal
      add_column :balance_sheets, :unavailable_reserves, :decimal
      add_column :balance_sheets, :free_reserves, :decimal
      add_column :balance_sheets, :brought_forward, :decimal
      add_column :balance_sheets, :net_income_of_the_period, :decimal
      add_column :balance_sheets, :investment_subventions, :decimal
      add_column :balance_sheets, :regulated_provisions, :decimal
      add_column :balance_sheets, :total_owners_equity_and_related_resources, :decimal
      add_column :balance_sheets, :loans_and_related_financial_liabilities, :decimal
      add_column :balance_sheets, :leasing_and_acquisition_liabilities, :decimal
      add_column :balance_sheets, :provisions_for_risks_and_expenses, :decimal
      add_column :balance_sheets, :total_financial_liabilities_and_related_resources, :decimal
      add_column :balance_sheets, :total_permanent_resources, :decimal
      add_column :balance_sheets, :OOA_current_liabilities, :decimal
      add_column :balance_sheets, :customers_advances_received, :decimal
      add_column :balance_sheets, :operating_suppliers, :decimal
      add_column :balance_sheets, :fiscal_and_social_liabilities, :decimal
      add_column :balance_sheets, :other_liabilities, :decimal
      add_column :balance_sheets, :provision_for_short_term_risks, :decimal
      add_column :balance_sheets, :total_current_liabilities, :decimal
      add_column :balance_sheets, :banks_discounting_credit, :decimal
      add_column :balance_sheets, :banks_financial_establishment_and_cash_advances, :decimal
      add_column :balance_sheets, :total_cash_liabilities, :decimal
      add_column :balance_sheets, :probable_exchange_gain, :decimal
      add_column :balance_sheets, :liabilities_grand_total, :decimal

  end
end
