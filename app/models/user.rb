class User < ApplicationRecord


  mount_uploader :icon

  has_one :manager
  has_one :organization, through: :manager

  validates :name, :email, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
