# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
puts "Cleaning db"
User.destroy_all
Player.destroy_all

val = User.create!(
  id: 1,
  email: "val@test.test",
  password: "123456"
)

toto = Player.create!(
  name: "Valentin",
  position: 1,
  victory: 1,
  defeat: 1,
  user_id: 1
)

puts "#{User.count} user were created"
puts "#{Player.count} players were created"