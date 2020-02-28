json.extract! car, :id, :name, :brand_id, :model_id, :version_id, :car_type_id, :rto_price, :on_road_price, :total_price, :created_at, :updated_at
json.url car_url(car, format: :json)
