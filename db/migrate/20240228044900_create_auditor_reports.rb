class CreateAuditorReports < ActiveRecord::Migration[7.0]
  def change
    create_table :auditor_reports do |t|
      t.string :title
      t.string :sub_title
      t.string :body
      t.string :opinion
      t.string :auditor
      t.string :date_of_report
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
