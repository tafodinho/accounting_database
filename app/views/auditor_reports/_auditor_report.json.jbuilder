json.extract! auditor_report, :id, :title, :sub_title, :body, :opinion, :auditor, :date_of_report, :company_id, :created_at, :updated_at
json.url auditor_report_url(auditor_report, format: :json)
