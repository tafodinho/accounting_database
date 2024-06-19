class Company < ApplicationRecord
  has_many :director_reports
  has_many :balance_sheets
  has_many :profit_and_loss_accounts
  has_many :cash_flows
  has_many :auditor_reports
end
