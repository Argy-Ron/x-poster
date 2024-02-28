class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #アソシエーション(1:多)
  has_many :tweets
  validates :name, presence: true #必須
  validates :profile, length: {maximum: 200}
end
