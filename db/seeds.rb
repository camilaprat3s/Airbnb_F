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

watch = {name: "Lunar Watch", location: "moon", price_per_day: 400000.124, availability: true, description: "very nice silver watch with a small lunar stone", condition: "meh", category: "jewellery", image: "https://www.louismoinet.com/wp-content/uploads/Produits/Moon/Moon_LM-45-50-MO.jpg"}
bracelet = {name: "Helios' Bracelet", location: "sun", price_per_day: 19999999999999, availability: false, description: "this bracelet makes you very powerful", condition: "perfect", category: "jewellery", image: "https://www.rebelandrose.com/media/images/rrproducts/png/big/RR-BR035-S.png?_=1695282617"}
britney_snack = {name: "Britney's Snack", location: "music video", price_per_day: 5000, availability: true, description: "The snack Britney danced with in a music video", condition: "meh", category: "exotic", image: "https://britney.com/snack.jpg"}
mj_jacket = {name: "MJ's Thriller Jacket", location: "music video", price_per_day: 20000, availability: false, description: "Michael Jackson's iconic red jacket from Thriller", condition: "Loved a little", category: "others", image: "https://mj.com/jacket.jpg"}
rose_dress = {name: "Rose's Heart Dress", location: "Titanic", price_per_day: 15000, availability: true, description: "The blue heart dress Rose had in Titanic", condition: "Mint", category: "others", image: "https://titanic.com/dress.jpg"}
harry_glasses = {name: "Harry's Glasses", location: "Hogwarts", price_per_day: 10000, availability: true, description: "Harry Potter's round glasses", condition: "Just out of the box", category: "exotic", image: "https://hp.com/glasses.jpg"}
ironman_suit = {name: "Iron Man Suit", location: "Stark Industries", price_per_day: 500000, availability: false, description: "Tony Stark's Iron Man suit", condition: "Brand New", category: "exotic", image: "https://ironman.com/suit.jpg"}
woody_hat = {name: "Woody's Hat", location: "Toy Story", price_per_day: 2000, availability: true, description: "Woody's cowboy hat from Toy Story", condition: "Loved a little", category: "others", image: "https://toystory.com/hat.jpg"}
vader_helmet = {name: "Vader's Helmet", location: "Death Star", price_per_day: 25000, availability: false, description: "Darth Vader's helmet from Star Wars", condition: "Mint", category: "exotic", image: "https://starwars.com/helmet.jpg"}
bond_tuxedo = {name: "Bond's Tuxedo", location: "Casino Royale", price_per_day: 10000, availability: true, description: "James Bond's tuxedo from Casino Royale", condition: "Just out of the box", category: "others", image: "https://bond.com/tuxedo.jpg"}
gandalf_staff = {name: "Gandalf's Staff", location: "Middle Earth", price_per_day: 15000, availability: false, description: "Gandalf's staff from Lord of the Rings", condition: "Loved a little", category: "exotic", image: "https://lotr.com/staff.jpg"}
cap_shield = {name: "Cap's Shield", location: "Avengers HQ", price_per_day: 20000, availability: true, description: "Captain America's shield", condition: "Mint", category: "exotic", image: "https://avengers.com/shield.jpg"}


[britney_snack, mj_jacket, rose_dress, harry_glasses, ironman_suit, woody_hat, vader_helmet, bond_tuxedo, gandalf_staff, cap_shield, watch, bracelet].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.description}"
end
puts "Finished!"

# ../../assets/images/moon_watch.jpg
# ../../assets/images/solar_bracelet.jpg
