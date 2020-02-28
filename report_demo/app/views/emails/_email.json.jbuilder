json.extract! email, :id, :email, :domain, :created_at, :updated_at
json.url email_url(email, format: :json)
