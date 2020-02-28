class User < ApplicationRecord
  has_many :orders

  validates :name,:city,:state, presence:{ message: "please enter"}
  validates :email, uniqueness: true
  validates :pincode, numericality: true

  after_initialize :set_name

  def set_name
    puts "after_initialize"
    self.name = 'abhishek' if self.name.blank?
  end
end
