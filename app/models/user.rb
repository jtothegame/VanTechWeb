class User < ApplicationRecord

  has_one :manager
  has_one :organization, through: :managers

  validates :name, :email, presence: true
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
