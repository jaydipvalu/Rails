json.extract! user, :id, :name, :brith_date, :e_mail, :phone, :gebder, :pincode, :city, :state, :country, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
