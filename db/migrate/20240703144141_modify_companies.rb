class ModifyCompanies < ActiveRecord::Migration[7.0]
  def change
    remove_column :companies, :address

    add_column :companies, :NIU, :string
    add_column :companies, :regime, :string
    add_column :companies, :CGA, :string
    add_column :companies, :manager, :string
    add_column :companies, :location, :string

  end
end
