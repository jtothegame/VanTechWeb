class User < ApplicationRecord

  has_one :manager
<<<<<<< HEAD
  has_one :organization, through: :managers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
=======
  has_one :organization, through: :manager

  validates :name, :email, presence: true


>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
