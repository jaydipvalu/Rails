class Standard < ApplicationRecord
  has_many :teachers_standards
  has_namy :teachers,through: :teachers_standards
end
