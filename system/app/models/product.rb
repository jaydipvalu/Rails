class Product < ApplicationRecord
  belongs_to :brand
  has_and_belongs_to_many :orders

  validates :name, presence: true

  after_validation :a

  def a
    puts "after_validation"
  end
end
