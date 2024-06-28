class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :plan_type
      t.decimal :price
      t.integer :duration
      t.string :status

      t.timestamps
    end
  end
end
