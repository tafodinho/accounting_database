class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :principal_activities
      t.string :advocates
      t.string :registered_office

      t.timestamps
    end
  end
end
