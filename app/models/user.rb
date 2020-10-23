class User < ApplicationRecord
    has_many :subscriptions
    has_many :games, through: :subscriptions
    has_secure_password
    validates :user_name, :first_name, :last_name, :email, :password, presence: true
    validates :user_name, :email, uniqueness: true
end
