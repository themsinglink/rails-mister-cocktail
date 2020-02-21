# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating 10 fake ingredients...'
10.times do
  ingredient = Ingredient.new(
    name:    Faker::Food.fruits
  )
  puts ingredient.name
  ingredient.save!
end
puts "#{Ingredient.count} created!"




