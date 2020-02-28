json.extract! user, :id, :name, :brith_date, :email, :pincode, :gender, :phone, :city, :state, :country, :adress, :created_at, :updated_at
json.url user_url(user, format: :json)
