# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all

pngblue = URI.open('https://i.imgur.com/tC7dDXN.png')
blue = Cocktail.new(name: 'Blue Lagoon', bootstrap_color: 'primary')
blue.photo.attach(io: pngblue, filename: 'blue.png', content_type: 'image/png')
blue.save

pngcaip = URI.open('https://i.imgur.com/GqY6EzJ.png')
caipirinha = Cocktail.new(name: 'Caipirinha', bootstrap_color: 'info')
caipirinha.photo.attach(io: pngcaip, filename: 'caip.png', content_type: 'image/png')
caipirinha.save

pngmarg = URI.open('https://i.imgur.com/ZKJrWSv.png')
margarita = Cocktail.new(name: 'Margarita', bootstrap_color: 'danger')
margarita.photo.attach(io: pngmarg, filename: 'caip.png', content_type: 'image/png')
margarita.save

Ingredient.destroy_all
ice = Ingredient.create!(name: 'ice')
lemon = Ingredient.create!(name: 'lemon')
Ingredient.create!(name: 'mint leaves')

Dose.create!(
  description: '10',
  cocktail_id: blue.id,
  ingredient: ice
)

Dose.create!(
  description: '5',
  cocktail_id: caipirinha.id,
  ingredient: lemon
)
