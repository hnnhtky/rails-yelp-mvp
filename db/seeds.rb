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

restaurants = [
  { name: "Sakura", address: "Shibuya", phone_number: "03-1234-5678", category: "japanese" },
  { name: "Le Petit Bistro", address: "Meguro", phone_number: "03-1234-5679", category: "french" },
  { name: "Luigi's", address: "Shinjuku", phone_number: "03-1234-5670", category: "italian" },
  { name: "Dragon Palace", address: "Ikebukuro", phone_number: "03-1234-5671", category: "chinese" },
  { name: "Brussels Bites", address: "Daikanyama", phone_number: "03-1234-5672", category: "belgian" }
]

restaurants.each do |n|
  restaurant = Restaurant.create!(n)
  puts "Created #{restaurant.name} ✅"
end


