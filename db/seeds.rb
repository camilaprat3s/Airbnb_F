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

user = User.create(email: "user@mail.com", password: "1234567", first_name: "Name", last_name: "Last")

puts "Creating Accessories..."

watch = {name: "Lunar Watch", location: "Moon", price_per_day: 400000.124, availability: true, description: "nice silver watch with a small lunar stone", condition: "meh", category: "jewellery", image: "https://www.yankodesign.com/images/design_news/2022/11/moon_watch_with_certified_fragment_of_lunar_meteorite_hero.jpg"}
bracelet = {name: "Helios' Bracelet", location: "Sun", price_per_day: 19999999999999, availability: true, description: "this bracelet makes you very powerful", condition: "perfect", category: "jewellery", image: "https://http2.mlstatic.com/D_NQ_NP_828643-MLB70803421947_072023-O.webp"}
sunfire_cape = {name: "Sunfire Cape", location: "Summoner's Rift", price_per_day: 2700, availability: true, description: "you'll look burning hot", condition: "on fire", category: "clothes", image: "https://images.contentstack.io/v3/assets/blt370612131b6e0756/blt42d5f1e9170c8028/63ffecb66fb32236236d3cce/sunfire_cape_01_256.png"}
bolt_spikes = {name: "Usain Bolt's Spikes", location: "Jamaica", price_per_day: 1000, availability: true, description: "run away from your problems as fast as you can", condition: "worn out", category: "footwear", image: "https://focus.independent.ie/thumbor/GCRs43WRZQi1nb7xtXv7WVYefNw=/0x8:1500x835/960x640/prod-mh-ireland/05fe7a44-bac0-11ed-9c57-0210609a3fe2.jpg"}



[watch, bracelet].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.name}"
end

[sunfire_cape, bolt_spikes].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.name}"
end

# ../../assets/images/moon_watch.jpg
# ../../assets/images/solar_bracelet.jpg
