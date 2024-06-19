class CreateProfitAndLossAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :profit_and_loss_accounts do |t|
      t.decimal :sales
      t.decimal :cost_of_sales
      t.decimal :gross_profit
      t.decimal :other_operating_income
      t.decimal :administrative_expenses
      t.decimal :other_operating_expenses
      t.decimal :operating_profit
      t.decimal :finance_cost
      t.decimal :profit_before_tax
      t.decimal :tax
      t.decimal :net_profit_for_the_year
      t.datetime :date_of_report
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
