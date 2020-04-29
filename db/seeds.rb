# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   first_name: Faker::Name.first_name, email: Faker::Internet.email
#

Movie.destroy_all
require "faker"
genres = ["action", "horreur", "comédie", "drame"]
100.times do
  movie = Movie.create!(name: Faker::Book.title, year: Faker::Number.within(range: 1900..2020), genre: genres.sample, synopsis: Faker::Movie.quote, director: Faker::Name.last_name, allocine_rating: rand(0.0...5.0), my_rating: nil, already_seen: false)
end
