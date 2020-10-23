# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Game.destroy_all
Subscription.destroy_all

10.times do
    User.create(user_name:Faker::Lorem.word,
                first_name:Faker::Name.first_name,
                last_name:Faker::Name.last_name,
                email:Faker::Internet.email,
                password:Faker::Internet.password)
end

50.times do
    Game.create(title:Faker::Game.title,
                platform:Faker::Game.platform)
end

10.times do
    Subscription.create(term:Faker::Subscription.subscription_term,
                        user_id: User.all.sample.id,
                        game_id: Game.all.sample.id)
end


