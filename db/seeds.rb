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


sunfire_cape = {name: "Sunfire Cape", location: "Summoner's Rift", price_per_day: 2700, availability: true, description: "you'll look burning hot", condition: "on fire", category: "clothes", image: "https://images.contentstack.io/v3/assets/blt370612131b6e0756/blt42d5f1e9170c8028/63ffecb66fb32236236d3cce/sunfire_cape_01_256.png"}
bolt_spikes = {name: "Usain Bolt's Spikes", location: "Jamaica", price_per_day: 1000, availability: true, description: "run away from your problems as fast as you can", condition: "worn out", category: "footwear", image: "https://focus.independent.ie/thumbor/GCRs43WRZQi1nb7xtXv7WVYefNw=/0x8:1500x835/960x640/prod-mh-ireland/05fe7a44-bac0-11ed-9c57-0210609a3fe2.jpg"}
watch = {name: "Lunar Watch", location: "moon", price_per_day: 400000.124, availability: true, description: "very nice silver watch with a small lunar stone", condition: "meh", category: "jewellery", image: "https://www.louismoinet.com/wp-content/uploads/Produits/Moon/Moon_LM-45-50-MO.jpg"}
bracelet = {name: "Helios' Bracelet", location: "sun", price_per_day: 19999999999999, availability: false, description: "this bracelet makes you very powerful", condition: "perfect", category: "jewellery", image: "https://www.rebelandrose.com/media/images/rrproducts/png/big/RR-BR035-S.png?_=1695282617"}
britney_snack = {name: "Britney's Snack", location: "music video", price_per_day: 5000, availability: true, description: "The snack Britney danced with in a music video", condition: "meh", category: "exotic", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPs2U4O1--mo-5KC23AFZSf90ZbdwqVvaIAot8pmqvmoDOERtx6BmDrIt1lQTvNnWMTQ&usqp=CAU"}
mj_jacket = {name: "MJ's Thriller Jacket", location: "music video", price_per_day: 20000, availability: false, description: "Michael Jackson's iconic red jacket from Thriller", condition: "Loved a little", category: "others", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnKw_fvRzy-YFz27KSirr87svJ1UgbAsRGUw&usqp=CAU"}
rose_dress= {name: "Rose's Heart Blue Necklace", location: "Titanic", price_per_day: 15000, availability: true, description: "The blue heart Rose had in Titanic", condition: "Mint", category: "others", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_UQRbHR29v9enwTcD4kwliN6XoN2LvALuwXYgwHoaJCjW7OGe5gDW1PEO0fmmM4i3QNA&usqp=CAU"}
harry_glasses = {name: "Harry's Glasses", location: "Hogwarts", price_per_day: 10000, availability: true, description: "Harry Potter's round glasses", condition: "Just out of the box", category: "exotic", image: "https://img.elo7.com.br/product/original/32910D6/kit-varinha-e-oculos-harry-potter-varinha-harry-potter.jpg"}
ironman_suit = {name: "Iron Man Suit", location: "Stark Industries", price_per_day: 500000, availability: false, description: "Tony Stark's Iron Man suit", condition: "Brand New", category: "exotic", image: "https://i.all3dp.com/wp-content/uploads/2020/02/04110904/Iron-Man-lead-image-scaled.jpg"}
woody_hat = {name: "Woody's Hat", location: "Toy Story", price_per_day: 2000, availability: true, description: "Woody's cowboy hat from Toy Story", condition: "Loved a little", category: "others", image: "https://cdn.brasil247.com/pb-b247gcp/swp/jtjeq9/media/2018062619064_5b32729479b75f796850f058png.png"}
vader_helmet = {name: "Vader's Helmet", location: "Death Star", price_per_day: 25000, availability: false, description: "Darth Vader's helmet from Star Wars", condition: "Mint", category: "exotic", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSECOj3z0WimYt4U74893UYG85sLrC5bWtJ_1vU--yi1Bw9byaWVaT6PSIXmTIZxTz02qQ&usqp=CAU"}
bond_tuxedo = {name: "Bond's Tuxedo", location: "Casino Royale", price_per_day: 10000, availability: true, description: "James Bond's tuxedo from Casino Royale", condition: "Just out of the box", category: "others", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnkVDPkZ5TIgYKSCIUgMkPU2-2ryB7PxZTpDvfR4YLcWN6qbNtvebz94ihdZM9prDLKec&usqp=CAU"}
gandalf_staff = {name: "Gandalf's Staff", location: "Middle Earth", price_per_day: 15000, availability: false, description: "Gandalf's staff from Lord of the Rings", condition: "Loved a little", category: "exotic", image: "https://www.stormthecastle.com/how-to-make-a/gandalfs-white-staff/gandalfs-staff-complete.jpg"}
cap_shield = {name: "Cap's Shield", location: "Avengers HQ", price_per_day: 20000, availability: true, description: "Captain America's shield", condition: "meh", category: "exotic", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfVzS4kERYTys0wV7l9dB6uFEPZbGXKnSm222lNQ6bSJiQHTdU3Iv0V1Rdja4qa5Ifk-w&usqp=CAU"}


[britney_snack, mj_jacket, rose_dress, harry_glasses, ironman_suit, woody_hat, vader_helmet, bond_tuxedo, gandalf_staff, cap_shield, watch, bracelet].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.name}"
end


[sunfire_cape, bolt_spikes].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.name}"
end

# ../../assets/images/moon_watch.jpg
# ../../assets/images/solar_bracelet.jpg
