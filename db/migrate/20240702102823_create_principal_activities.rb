class CreatePrincipalActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :principal_activities do |t|
      t.string :activity
      t.timestamps
    end
  end
end
