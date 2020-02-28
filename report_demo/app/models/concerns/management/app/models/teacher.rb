class Teacher < ApplicationRecord
  has_many :standards_techers
  has_many :students,through: :standards_teachers
end
