class User < ApplicationRecord
    has_many :subscriptions
    has_many :games, through: :subscriptions
end
