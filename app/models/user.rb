class User < ApplicationRecord
  has_many :posts
  has_many :messages
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  validates :name, presence: true

  has_many :room_users
  has_many :rooms, through: :room_users

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i,
    message: 'is invalid. Include both letters and numbers' }
end
