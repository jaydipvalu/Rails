json.extract! order, :id, :user_id, :on_road_price, :rto_price, :total_price, :payment_methods, :payment_id, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
