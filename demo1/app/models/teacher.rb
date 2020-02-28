class Teacher < ApplicationRecord
  has_many :teachers_standards
  has_many :standars,through: :teachers_standards
  has_many :students
end
