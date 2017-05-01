class Organization < ApplicationRecord

  mount_uploader :icon

  has_one :manager
  has_one :user, through: :manager
  has_many :photos

  has_many :tags, through: :taggings
  has_many :taggings

  validates :name, :address, :overview, :employees,
            :teamsize, :website, :twitter, presence: true

  geocoded_by :address, latitude: :lat, longitude: :long

  after_validation :geocode, if: ->(obj){ (obj.address.present? and obj.address_changed?) }

end
