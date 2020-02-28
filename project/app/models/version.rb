class Version < ApplicationRecord
  belongs_to :model
  has_many :cars

  validates :name, presence: true
end
