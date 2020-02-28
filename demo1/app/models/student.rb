class Student < ApplicationRecord
  belongs_to :standards
  has_many :teachers,through: :standard
end
