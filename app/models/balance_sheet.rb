class BalanceSheet < ApplicationRecord
  belongs_to :company

  def self.ransackable_attributes(auth_object = nil)
    [
      "share_capital",
      "retained_earnings",
      "shareholder_funds",
      "borrowings",
      "property_and_equiptments",
      "prepaid_operating_lease_rentals",
      "intangible_assets",
      "deffered_tax",
      "inventories",
      "trade_and_other_receivables",
      "cash_at_bank_and_in_hand",
      "trade_and_other_payables",
      "current_tax",
      "date_of_report",
      "company",
    ]
  end

  def self.ransackable_associations(auth_object = nil)
    ["company"]
  end
end
