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
Accessory.destroy_all

puts "Creating Accessories..."
watch = {name: "Lunar Watch", location: "moon", price: 400000.124, availability: true, description: "very nice silver watch with a small lunar stone", condition: "meh", image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/skateboard.jpg"}
bracelet = {name: "Helios' Bracelet", location: "sun", price: 19999999999999, availability: false, description: "this bracelet makes you very powerful", condition: "perfect", image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg"}

[watch, bracelet].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.description}"
end
puts "Finished!"

# ../../assets/images/moon_watch.jpg
# ../../assets/images/solar_bracelet.jpg
