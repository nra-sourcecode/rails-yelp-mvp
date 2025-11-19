# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Restaurant.create(name: "Botega", address: "Linnaeusstraat 16", phone_number: "082727626", category: "italian")
Restaurant.create(name: "Lekker sushi", address: "Oosterparkstraat 6", phone_number: "1928739187", category: "japanese")
Restaurant.create(name: "Bistro des Alpes", address: "Westerstraat 6", phone_number: "9327182", category: "french")
Restaurant.create(name: "Bij moeders", address: "Spuitstraat 6", phone_number: "2837198273", category: "belgian")
Restaurant.create(name: "Stoofvlees", address: "Harenstraat 6", phone_number: "2937129873", category: "belgian")
