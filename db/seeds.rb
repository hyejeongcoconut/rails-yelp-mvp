# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy.all

puts "Creating restaurants..."
ddeokbokki = { name: ddokbokkitown, address: "Seoul", phone_number: "031)2320984" category: japanese}
zachnenzo = {name: zachnenzo, address: "paris", category: french}

[ddeokbokki, zacheenzo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "finished"
