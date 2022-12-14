# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
yummi_salad = {name: "Yummie Salad", address: "8 Bd St Joseph, Cambridge", category: "french"}
toffu_ffa =  {name: "Toffu FFA", address: "80A Shoreditch High St, London E1 6PQ", category: "japanese"}
crazy_tiger =  {name: "Crazy Tiger", address: "54 Boundary St, London E2 7JE", category: "chinese"}


[dishoom, pizza_east, yummi_salad, toffu_ffa, crazy_tiger].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
