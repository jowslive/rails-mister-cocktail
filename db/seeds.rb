# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all

blue = Cocktail.create!(name: 'Blue Lagoon', bootstrap_color: 'primary', image: 'https://i.imgur.com/tC7dDXN.png')
caipirinha = Cocktail.create!(name: 'Caipirinha', bootstrap_color: 'info', image: 'https://i.imgur.com/GqY6EzJ.png')
Cocktail.create!(name: 'Margarita', bootstrap_color: 'danger', image: 'https://i.imgur.com/ZKJrWSv.png')

Ingredient.destroy_all
ice = Ingredient.create!(name: 'ice')
lemon = Ingredient.create!(name: 'lemon')
Ingredient.create!(name: 'mint leaves')

Dose.create!(
  description: '10',
  cocktail: blue,
  ingredient: ice
)

Dose.create!(
  description: '5',
  cocktail: caipirinha,
  ingredient: lemon
)
