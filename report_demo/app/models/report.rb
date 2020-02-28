class Report < ApplicationRecord
  belongs_to :reportble, polymorphic: true
  belongs_to :user
end
