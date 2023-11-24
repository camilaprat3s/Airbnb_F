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

user= User.create(email: "user@mail.com", password: "1234567", first_name: "Name", last_name: "Last")

puts "Creating Accessories..."

watch = {name: "Lunar Watch", location: "moon", price_per_day: 400000.124, availability: true, description: "very nice silver watch with a small lunar stone", condition: "meh", category: "jewellery", image: "https://www.louismoinet.com/wp-content/uploads/Produits/Moon/Moon_LM-45-50-MO.jpg"}
bracelet = {name: "Helios' Bracelet", location: "sun", price_per_day: 19999999999999, availability: false, description: "this bracelet makes you very powerful", condition: "perfect", category: "jewellery", image: "https://www.rebelandrose.com/media/images/rrproducts/png/big/RR-BR035-S.png?_=1695282617"}

[watch, bracelet].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.description}"
end
puts "Finished!"

# ../../assets/images/moon_watch.jpg
# ../../assets/images/solar_bracelet.jpg
