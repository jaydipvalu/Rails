class Car < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :version
  belongs_to :car_type
end
