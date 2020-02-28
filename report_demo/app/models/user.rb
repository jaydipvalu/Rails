class User < ApplicationRecord
  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :emails
  has_many :reports
end
