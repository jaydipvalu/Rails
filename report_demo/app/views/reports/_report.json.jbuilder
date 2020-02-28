json.extract! report, :id, :name, :user_id, :reportble_id, :reportble_type, :created_at, :updated_at
json.url report_url(report, format: :json)
