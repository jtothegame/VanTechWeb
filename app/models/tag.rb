class Tag < ApplicationRecord
  has_many :organizations, through: :tagging
end
