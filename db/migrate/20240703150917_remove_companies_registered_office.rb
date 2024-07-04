class RemoveCompaniesRegisteredOffice < ActiveRecord::Migration[7.0]
  def change
    remove_column :companies, :registered_office
    remove_column :companies, :advocates
  end
end
