class Brand < ApplicationRecord
  has_many :cars
  has_many :models

  validates :email, uniqueness: true, on: :create
  validates :name, :website, :email, presence: { message: "please enter" }

  after_validation :create_brand

  def create_brand
    puts " update Brand "
  end
end
