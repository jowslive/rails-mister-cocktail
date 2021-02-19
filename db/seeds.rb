# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all

cocktail = Cocktail.create!(name: 'Blue Lagoon')
Cocktail.create!(name: 'Caipirinha')
Cocktail.create!(name: 'Margarita')

Ingredient.destroy_all
Ingredient.create!(name: 'ice')
ingredient = Ingredient.create!(name: 'lemon')
Ingredient.create!(name: 'mint leaves')

Dose.create!(description: 'teste', cocktail: cocktail, ingredient: ingredient)
