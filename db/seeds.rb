# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = ["chinese", "italian", "japanese", "french", "belgian"]

puts "creating 5 fake restaurants"

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: category.sample,
    phone_number: Faker::PhoneNumber.phone_number
    )
  restaurant.save!
end

puts "done!"
