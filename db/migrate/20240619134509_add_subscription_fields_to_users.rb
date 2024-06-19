class AddSubscriptionFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :subscription_status, :string
    add_column :users, :plan_type, :string
    add_column :users, :subscription_end_date, :datetime
  end
end
