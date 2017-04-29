class Organization < ApplicationRecord
  has_one :manager
  has_one :user, through: :managers

  has_many :tags, through: :taggings
  has_many :taggings

  validates :name, :address, :overview, :employees,
            :teamsize, :website, :twitter, presence: true


end
