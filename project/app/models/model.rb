class Model < ApplicationRecord
  belongs_to :brand
  has_many :cars
  has_many :versions

  validates :name, presence: true
end
