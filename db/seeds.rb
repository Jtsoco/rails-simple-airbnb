# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "Clearing out the flats..."
Flat.destroy_all
puts "Creating new flats..."

10.times do
  Flat.create!(
    name: Faker::Book.title,
    address: Faker::Address.full_address,
    description: "#{Faker::Fantasy::Tolkien.poem}. That's what we say! It's #{Faker::Company.buzzword} and #{Faker::Company.buzzword}, It's a perfect place for #{Faker::Hobby.activity}. You'll be left in #{Faker::Emotion.noun}",
    price_per_night: rand(50..300),
    number_of_guests: rand(1..10)
  )
end

puts "flats complete!"
