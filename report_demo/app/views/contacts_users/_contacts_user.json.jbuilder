json.extract! contacts_user, :id, :contact_id, :user_id, :created_at, :updated_at
json.url contacts_user_url(contacts_user, format: :json)
