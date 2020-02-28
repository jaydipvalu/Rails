class Contact < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :reports, as: :reportble
end
