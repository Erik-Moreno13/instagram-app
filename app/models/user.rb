class User < ApplicationRecord
  has_many :followers, class_name: "Follow", foreign_key: "followed_id"
  has_many :following, class_name: "Follow", foreign_key: "follower_id"
  has_many :posts
  has_many :likes
  validates :name, presence: true, length: {maximum: 50}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
