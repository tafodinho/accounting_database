# db/seeds.rb

# Load Rails environment
require_relative "../config/environment"
require 'faker'

# Define method to generate random data for each table
  # User.create(
  #   email: "user@user.com",
  #   password: "Hacker@111",
  #   admin: true
  # )
  ## Generate data for companies
  # 20.times do 
  #   company = Company.create(
  #     name: Faker::Company.name,
  #     address: Faker::Address.full_address,
  #     principal_activities: Faker::Lorem.words(number: 4).join(" "),
  #     advocates: Faker::Name.name,
  #     registered_office: Faker::Address.full_address
  #   )
  #   # Generate data for director_reports
  #   10.times do 
  #     DirectorReport.create(
  #       body: Faker::Lorem.paragraph,
  #       date_of_report: Faker::Date.backward(days: 365),
  #       company_id: company.id,
  #       director_1: Faker::Name.name,
  #       director_2: Faker::Name.name
  #     )
  #   end

  #    # Generate data for profit_and_loss_accounts
  #   10.times do 
  #     ProfitAndLossAccount.create(
  #       sales: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       cost_of_sales: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       gross_profit: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       other_operating_income: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       administrative_expenses: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       other_operating_expenses: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       operating_profit: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       finance_cost: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       profit_before_tax: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       tax: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       net_profit_for_the_year: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       date_of_report: Faker::Date.backward(days: 365),
  #       company_id: company.id
  #     )
  #   end

  #   # Generate data for auditor_reports
  #   10.times do 
  #     AuditorReport.create(
  #       title: Faker::Lorem.sentence,
  #       sub_title: Faker::Lorem.sentence,
  #       body: Faker::Lorem.paragraph,
  #       opinion: ["Positive", "Negative", "Neutral"].sample,
  #       auditor: Faker::Name.name,
  #       date_of_report: Faker::Date.backward(days: 365),
  #       company_id: company.id
  #     )
  #   end

  #   # Generate data for balance_sheets
  #   10.times do 
  #     BalanceSheet.create(
  #       share_capital: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       retained_earnings: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       shareholder_funds: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       borrowings: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       property_and_equiptments: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       prepaid_operating_lease_rentals: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       intangible_assets: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       deffered_tax: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       inventories: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       trade_and_other_receivables: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       cash_at_bank_and_in_hand: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       trade_and_other_payables: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       current_tax: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       date_of_report: Faker::Date.backward(days: 365),
  #       company_id: company.id
  #     )
  #   end

  #   10.times do 
  #     CashFlow.create(
  #       profit_before_income_tax: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       depreciation_on_property_plant_and_equiptments: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       profit_on_disposal: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       amortisation_of_prepaid_lease: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       amortisation_of_intangible_assets: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       interest_expense: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       operating_profit_before_working_capital_changes: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       inventories: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       trade_and_other_recievables: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       trade_and_other_payables: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       cash_generated_from_operations: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       tax: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       interest_paid: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       net_cash_generated_from_operating_activities: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       purchase_of_property_plant_and_equiptments: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       purchase_of_prepaid_operating_lease_rentals: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       proceeds_from_sale_of_property_plant_and_equiptments: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       intangible_assets: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       interest_income: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       net_cash_used_in_investing_activities: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       proceeds_from_issue_of_share_capital: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       proceeds_from_borrowing: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       repayments_of_borrowing: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       net_cash_generated_from_financial_activities: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       net_decrease_in_cash_and_cash_equivalents: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       cash_and_cash_equivalent_at_1st_january: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       cash_and_cash_equivalent_at_31st_december: Faker::Number.decimal(l_digits: 6, r_digits: 2),
  #       company_id: company.id
  #     )
  #   end
  # end