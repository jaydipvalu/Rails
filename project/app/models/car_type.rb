class CarType < ApplicationRecord
  has_many :cars

  validates :name, presence: { message: "please enter"}
end
