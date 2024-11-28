# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

Epicure = { name: "Epicure", address: "75008 Paris", phone_number: "1234567890", category: "french" }
Sushi_samba = { name: "Sushi Samba", address: "123 Tokyo", phone_number: "2345678901", category: "japanese" }
Pasta_basta = { name: "Pasta Basta", address: "456 Rome", phone_number: "3456789012", category: "italian" }
Waffles_world = { name: "Waffles World", address: "789 Brussels", phone_number: "4567890123", category: "belgian" }
Dim_sum_house = { name: "Dim Sum House", address: "101 Beijing", phone_number: "5678901234", category: "chinese" }

[ Epicure, Sushi_samba, Pasta_basta, Waffles_world, Dim_sum_house ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
