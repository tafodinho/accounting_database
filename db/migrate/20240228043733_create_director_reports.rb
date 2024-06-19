class CreateDirectorReports < ActiveRecord::Migration[7.0]
  def change
    create_table :director_reports do |t|
      t.string :body
      t.string :date_of_report
      t.references :company, null: false, foreign_key: true
      t.string :director_1
      t.string :director_2

      t.timestamps
    end
  end
end
