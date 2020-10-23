class User < ApplicationRecord
    has_many :subscriptions
    has_many :games, through: :subscriptions
    validates :user_name, :first_name, :last_name, :email, :password, presence: true
    validates :user_name, :email, uniqueness: true
    has_secure_password
end
