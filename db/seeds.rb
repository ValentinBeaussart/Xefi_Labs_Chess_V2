# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
puts "Cleaning db"
# User.destroy_all
# Player.destroy_all

val = User.create!(
  id: 1,
  email: "val@test.test",
  password: "123456"
)

toto = Player.create!(
  name: "Romin",
  position: 1,
  victory: 2,
  defeat: 1,
  user_id: 1,
)

titi = Player.create!(
  name: "Mohammed",
  position: 2,
  victory: 3,
  defeat: 4,
  user_id: 1,
)

tata = Player.create!(
  name: "Alizée la mauvaise perdante",
  position: 3,
  victory: 54,
  defeat: 55,
  user_id: 1,
)

tata = Player.create!(
  name: "Valentin",
  position: 4,
  victory: 8,
  defeat: 1,
  user_id: 1,
)

tata = Player.create!(
  name: "Mathis",
  position: 5,
  victory: 0,
  defeat: 1,
  user_id: 1,
)

tata = Player.create!(
  name: "Tanguy",
  position: 6,
  victory: 67,
  defeat: 1,
  user_id: 1,
)

tata = Player.create!(
  name: "Cécile",
  position: 7,
  victory: 1,
  defeat: 1,
  user_id: 1,
)

tata = Player.create!(
  name: "Cécile",
  position: 8,
  victory: 1,
  defeat: 1,
  user_id: 1,
)

puts "#{User.count} user were created"
puts "#{Player.count} players were created"