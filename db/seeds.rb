# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying restaurants"
Flat.destroy_all
puts "Destroyed!"
puts "Creating 5 flats"
5.times do
  flat = Flat.create( # create instead of new since create does save
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence,
    price_per_night: Faker::Number.between(from: 50, to: 300),
    number_of_guests: Faker::Number.between(from: 1, to: 6)
    # class::constant.method
  )
  puts "#{flat.name} created."
end
puts "Done!"
