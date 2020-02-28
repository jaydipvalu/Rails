class User < ApplicationRecord
  validates :name, presence: { message: "please enter" }
  validates :brith_date, presence: true
  validates :e_mail, uniqueness:true, format: { with: URI::MailTo::EMAIL_REGEXP, on: :create }
  validates :pincode, numericality:{ message: "please enter" }
  validates :phone, length: { maximum:13}, allow_blank: true
  validates :year, absence: true
  validates :city, presence: { message:"enter please" },on: :update

end
