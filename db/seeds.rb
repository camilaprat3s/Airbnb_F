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
watch = {location: "hell", price: 4.124, availability: true, description: "very nice gold watch with many diamonds", condition: "meh"}
bracelet =  {location: "sun", price: 19999999999999, availability: false, description: "this bracelet makes you very powerful"}

[watch, bracelet].each do |attributes|
  accessory = Accessory.create!(attributes)
  puts "Created #{accessory.description}"
end
puts "Finished!"
