class Organization < ApplicationRecord
  has_one :manager
  has_one :user, through: :managers
  has_many :tags, through: :tagging


end
