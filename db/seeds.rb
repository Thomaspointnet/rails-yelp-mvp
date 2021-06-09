# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0836656565', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0736656565', category: 'italian' }
relais_faumont = { name: 'Relais de Faumont', address: 'Faumont', phone_number: '0336656565', category: 'french' }
leon = { name: 'Leon', address: 'Bruxelles', phone_number: '0236656565', category: 'belgian' }
tao = { name: 'Tao', address: 'Tokyo', phone_number: '0136656565', category: 'japanese' }

[dishoom, pizza_east, relais_faumont, leon, tao].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
