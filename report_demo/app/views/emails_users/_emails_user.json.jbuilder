json.extract! emails_user, :id, :email_id, :user_id, :created_at, :updated_at
json.url emails_user_url(emails_user, format: :json)
