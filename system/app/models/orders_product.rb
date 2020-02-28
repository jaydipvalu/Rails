class OrdersProduct < ApplicationRecord
  belongs_to :Order
  belongs_to :product
end
