class Organization < ApplicationRecord
  has_one :manager
<<<<<<< HEAD
  has_one :user, through: :managers
  has_many :tags, through: :taggings
  has_many :taggings
=======
  has_one :user, through: :manager
  has_many :photos

  has_many :tags, through: :taggings
  has_many :taggings

  validates :name, :address, :overview, :employees,
            :teamsize, :website, :twitter, presence: true

  geocoded_by :address, latitude: :lat, longitude: :long

  after_validation :geocode, if: ->(obj){ (obj.address.present? and obj.address_changed?) }

>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
end
