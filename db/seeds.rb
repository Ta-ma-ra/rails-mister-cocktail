# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database...'

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'whiskey')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'mint leaves')

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end


puts 'Finished!'
puts "You have now #{Ingredient.count} ingredients!"
# Restaurant.destroy_all

# puts 'Creating 5 fake restaurants...'
# 5.times do
#   restaurant = Restaurant.new(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: %w[chinese italian japanese french belgian].sample
#   )
#   restaurant.save!
# end
