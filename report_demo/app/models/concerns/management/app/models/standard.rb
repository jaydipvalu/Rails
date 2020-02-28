class Standard < ApplicationRecord
  has_many :standards_techers
  has_many :teachers,through: :standards_techers  
end
