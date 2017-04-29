class Tag < ApplicationRecord
  has_many :organizations, through: :taggings
  has_many :taggings
end
