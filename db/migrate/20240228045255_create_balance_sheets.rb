class CreateBalanceSheets < ActiveRecord::Migration[7.0]
  def change
    create_table :balance_sheets do |t|
      t.decimal :share_capital
      t.decimal :retained_earnings
      t.decimal :shareholder_funds
      t.decimal :borrowings
      t.decimal :property_and_equiptments
      t.decimal :prepaid_operating_lease_rentals
      t.decimal :intangible_assets
      t.decimal :deffered_tax
      t.decimal :inventories
      t.decimal :trade_and_other_receivables
      t.decimal :cash_at_bank_and_in_hand
      t.decimal :trade_and_other_payables
      t.decimal :current_tax
      t.datetime :date_of_report
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
