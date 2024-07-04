# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_07_03_150917) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditor_reports", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "body"
    t.string "opinion"
    t.string "auditor"
    t.string "date_of_report"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_auditor_reports_on_company_id"
  end

  create_table "balance_sheets", force: :cascade do |t|
    t.datetime "date_of_report"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "development_and_prospection_expenses"
    t.decimal "patents_licenses_software_and_similar_right"
    t.decimal "goodwill_and_leasehold_right"
    t.decimal "other_intangible_fixed_assets"
    t.decimal "land"
    t.decimal "building"
    t.decimal "fittings_fixtures_and_installations"
    t.decimal "equiptment_furniture_and_livestock_assets"
    t.decimal "transport_equipment"
    t.decimal "advances_and_payments_on_accounts_for_fixed_assets"
    t.decimal "equity_and_securities"
    t.decimal "other_financial_fixed_assets"
    t.decimal "total_fixed_assets"
    t.decimal "OOA_current_assets"
    t.decimal "stock_and_stock_in_process"
    t.decimal "supplies_and_advances_paid"
    t.decimal "customers"
    t.decimal "other_debtors"
    t.decimal "total_current_assets"
    t.decimal "marketable_securities"
    t.decimal "values_to_be_collected"
    t.decimal "banks_giro_banks_cash_and_related_items"
    t.decimal "total_cash_assets"
    t.decimal "probable_exchange_loss"
    t.decimal "assets_grand_total"
    t.decimal "capital"
    t.decimal "shareholders_uncalledup_capital"
    t.decimal "premiums_related_to_share_capital"
    t.decimal "revaluation_variance"
    t.decimal "unavailable_reserves"
    t.decimal "free_reserves"
    t.decimal "brought_forward"
    t.decimal "net_income_of_the_period"
    t.decimal "investment_subventions"
    t.decimal "regulated_provisions"
    t.decimal "total_owners_equity_and_related_resources"
    t.decimal "loans_and_related_financial_liabilities"
    t.decimal "leasing_and_acquisition_liabilities"
    t.decimal "provisions_for_risks_and_expenses"
    t.decimal "total_financial_liabilities_and_related_resources"
    t.decimal "total_permanent_resources"
    t.decimal "OOA_current_liabilities"
    t.decimal "customers_advances_received"
    t.decimal "operating_suppliers"
    t.decimal "fiscal_and_social_liabilities"
    t.decimal "other_liabilities"
    t.decimal "provision_for_short_term_risks"
    t.decimal "total_current_liabilities"
    t.decimal "banks_discounting_credit"
    t.decimal "banks_financial_establishment_and_cash_advances"
    t.decimal "total_cash_liabilities"
    t.decimal "probable_exchange_gain"
    t.decimal "liabilities_grand_total"
    t.index ["company_id"], name: "index_balance_sheets_on_company_id"
  end

  create_table "cash_flows", force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "net_cash_as_at_january_1st"
    t.decimal "global_self_financing_capacity"
    t.decimal "OOA_current_assets"
    t.decimal "variation_of_stocks"
    t.decimal "variation_of_customers_and_other_debtors"
    t.decimal "variation_of_current_liabilities"
    t.decimal "net_cash_flow_from_operating_activities"
    t.decimal "cash_outflow_from_acquisition_of_financial_fixed_assets"
    t.decimal "cash_outflow_from_acquisition_of_intangible_fixed_assets"
    t.decimal "cash_outflow_from_acquisition_of_tangible_fixed_assets"
    t.decimal "cash_inflow_from_disposal_of_intangible_and_tangible_fixed_asse"
    t.decimal "cash_inflow_from_disposal_of_financial_fixed_assets"
    t.decimal "net_cash_flow_from_investing_activities"
    t.decimal "increase_of_capacity_by_new_contributions"
    t.decimal "investing_subventions_received"
    t.decimal "reductions_in_capital"
    t.decimal "divedents_paid"
    t.decimal "net_cash_flows_from_owners_equity"
    t.decimal "acquisition_of_loans"
    t.decimal "reimbursements_of_loans_and_other_financial_debts"
    t.decimal "net_cash_flows_from_creditors_equity"
    t.decimal "net_cash_flows_from_financing_activities"
    t.decimal "variation_of_net_cash_for_the_year"
    t.decimal "net_cash_as_at_december_31st"
    t.index ["company_id"], name: "index_cash_flows_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "principal_activities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "NIU"
    t.string "regime"
    t.string "CGA"
    t.string "manager"
    t.string "location"
  end

  create_table "director_reports", force: :cascade do |t|
    t.string "body"
    t.string "date_of_report"
    t.integer "company_id", null: false
    t.string "director_1"
    t.string "director_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_director_reports_on_company_id"
  end

  create_table "motor_alert_locks", force: :cascade do |t|
    t.integer "alert_id", null: false
    t.string "lock_timestamp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id", "lock_timestamp"], name: "index_motor_alert_locks_on_alert_id_and_lock_timestamp", unique: true
    t.index ["alert_id"], name: "index_motor_alert_locks_on_alert_id"
  end

  create_table "motor_alerts", force: :cascade do |t|
    t.integer "query_id", null: false
    t.string "name", null: false
    t.text "description"
    t.text "to_emails", null: false
    t.boolean "is_enabled", default: true, null: false
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_alerts_name_unique_index", unique: true, where: "(deleted_at IS NULL)"
    t.index ["query_id"], name: "index_motor_alerts_on_query_id"
    t.index ["updated_at"], name: "index_motor_alerts_on_updated_at"
  end

  create_table "motor_api_configs", force: :cascade do |t|
    t.string "name", null: false
    t.string "url", null: false
    t.text "preferences", null: false
    t.text "credentials", null: false
    t.text "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_api_configs_name_unique_index", unique: true, where: "(deleted_at IS NULL)"
  end

  create_table "motor_audits", force: :cascade do |t|
    t.string "auditable_id"
    t.string "auditable_type"
    t.string "associated_id"
    t.string "associated_type"
    t.bigint "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.bigint "version", default: 0
    t.text "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "motor_auditable_associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "motor_auditable_index"
    t.index ["created_at"], name: "index_motor_audits_on_created_at"
    t.index ["request_uuid"], name: "index_motor_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "motor_auditable_user_index"
  end

  create_table "motor_configs", force: :cascade do |t|
    t.string "key", null: false
    t.text "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_motor_configs_on_key", unique: true
    t.index ["updated_at"], name: "index_motor_configs_on_updated_at"
  end

  create_table "motor_dashboards", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "motor_dashboards_title_unique_index", unique: true, where: "(deleted_at IS NULL)"
    t.index ["updated_at"], name: "index_motor_dashboards_on_updated_at"
  end

  create_table "motor_forms", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "api_path", null: false
    t.string "http_method", null: false
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.string "api_config_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_forms_name_unique_index", unique: true, where: "(deleted_at IS NULL)"
    t.index ["updated_at"], name: "index_motor_forms_on_updated_at"
  end

  create_table "motor_note_tag_tags", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "note_id", null: false
    t.index ["note_id", "tag_id"], name: "motor_note_tags_note_id_tag_id_index", unique: true
    t.index ["tag_id"], name: "index_motor_note_tag_tags_on_tag_id"
  end

  create_table "motor_note_tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_note_tags_name_unique_index", unique: true
  end

  create_table "motor_notes", force: :cascade do |t|
    t.text "body"
    t.bigint "author_id"
    t.string "author_type"
    t.string "record_id", null: false
    t.string "record_type", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id", "author_type"], name: "motor_notes_author_id_author_type_index"
    t.index ["record_id", "record_type"], name: "motor_notes_record_id_record_type_index"
  end

  create_table "motor_notifications", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.bigint "recipient_id", null: false
    t.string "recipient_type", null: false
    t.string "record_id"
    t.string "record_type"
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "recipient_type"], name: "motor_notifications_recipient_id_recipient_type_index"
    t.index ["record_id", "record_type"], name: "motor_notifications_record_id_record_type_index"
  end

  create_table "motor_queries", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "sql_body", null: false
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_queries_name_unique_index", unique: true, where: "(deleted_at IS NULL)"
    t.index ["updated_at"], name: "index_motor_queries_on_updated_at"
  end

  create_table "motor_reminders", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.string "author_type", null: false
    t.bigint "recipient_id", null: false
    t.string "recipient_type", null: false
    t.string "record_id"
    t.string "record_type"
    t.datetime "scheduled_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id", "author_type"], name: "motor_reminders_author_id_author_type_index"
    t.index ["recipient_id", "recipient_type"], name: "motor_reminders_recipient_id_recipient_type_index"
    t.index ["record_id", "record_type"], name: "motor_reminders_record_id_record_type_index"
    t.index ["scheduled_at"], name: "index_motor_reminders_on_scheduled_at"
  end

  create_table "motor_resources", force: :cascade do |t|
    t.string "name", null: false
    t.text "preferences", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_motor_resources_on_name", unique: true
    t.index ["updated_at"], name: "index_motor_resources_on_updated_at"
  end

  create_table "motor_taggable_tags", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.bigint "taggable_id", null: false
    t.string "taggable_type", null: false
    t.index ["tag_id"], name: "index_motor_taggable_tags_on_tag_id"
    t.index ["taggable_id", "taggable_type", "tag_id"], name: "motor_polymorphic_association_tag_index", unique: true
  end

  create_table "motor_tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_tags_name_unique_index", unique: true
  end

  create_table "principal_activities", force: :cascade do |t|
    t.string "activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profit_and_loss_accounts", force: :cascade do |t|
    t.datetime "date_of_report"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "sales_of_goods"
    t.decimal "purchases_of_goods"
    t.decimal "variation_stocks_of_goods"
    t.decimal "gross_profit"
    t.decimal "sales_of_manufactured_products"
    t.decimal "works_and_services_sold"
    t.decimal "accessory_revenues"
    t.decimal "turnover"
    t.decimal "stored_production"
    t.decimal "self_constructed_assets"
    t.decimal "operating_subvention"
    t.decimal "other_revenues"
    t.decimal "transfer_of_operating_expenses"
    t.decimal "purchases_of_raw_material_and_related_stores"
    t.decimal "variation_of_stock_of_raw_materials_and_related_store"
    t.decimal "other_purchases"
    t.decimal "variation_of_stock_of_other_supplies"
    t.decimal "transport"
    t.decimal "external_services"
    t.decimal "taxes_and_rates"
    t.decimal "other_expenses"
    t.decimal "value_added"
    t.decimal "personal_expenses"
    t.decimal "gross_operating_surplus"
    t.decimal "depreciations_impairment_provision_and_investment_subventions_w"
    t.decimal "depreciations_impairment_losses_and_provision_expenses"
    t.decimal "operating_profit_and_loss"
    t.decimal "financial_and_related_revenues"
    t.decimal "financial_impairment_and_provision_written_back"
    t.decimal "transfer_of_financial_expenses"
    t.decimal "financial_and_related_expenses"
    t.decimal "financial_impairment_and_provision_expenses"
    t.decimal "financial_profit_and_loss"
    t.decimal "ordinary_activity_result"
    t.decimal "revenues_from_disposals_of_fixed_assets"
    t.decimal "other_revenues_OOA"
    t.decimal "values_of_disposals_of_fixed_assets"
    t.decimal "other_expenses_OOA"
    t.decimal "OOA_result"
    t.decimal "employees_profit_sharing_scheme"
    t.decimal "income_tax"
    t.decimal "net_income"
    t.index ["company_id"], name: "index_profit_and_loss_accounts_on_company_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "plan_type"
    t.decimal "price"
    t.integer "duration"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "subscription_status"
    t.string "plan_type"
    t.datetime "subscription_end_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "auditor_reports", "companies"
  add_foreign_key "balance_sheets", "companies"
  add_foreign_key "cash_flows", "companies"
  add_foreign_key "director_reports", "companies"
  add_foreign_key "motor_alert_locks", "motor_alerts", column: "alert_id"
  add_foreign_key "motor_alerts", "motor_queries", column: "query_id"
  add_foreign_key "motor_note_tag_tags", "motor_note_tags", column: "tag_id"
  add_foreign_key "motor_note_tag_tags", "motor_notes", column: "note_id"
  add_foreign_key "motor_taggable_tags", "motor_tags", column: "tag_id"
  add_foreign_key "profit_and_loss_accounts", "companies"
  add_foreign_key "subscriptions", "users"
end
