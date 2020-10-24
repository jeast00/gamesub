class User < ApplicationRecord
    has_many :subscriptions
    has_many :games, through: :subscriptions
    validates :user_name, :first_name, :last_name, :email, :password, presence: true
    validates :user_name, :email, uniqueness: true
    has_secure_password

    def self.find_or_create_by_omniauth(auth_hash) 
        self.where(:user_name => auth_hash['info'][:user_name]).first_or_create do |user|
            user.password = SecureRandom.hex
        end
    end
end
