require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lemon_juice = Ingredient.create(name: "lemon juice")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")
whiskey = Ingredient.create(name: "whiskey")
bourbon = Ingredient.create(name: "bourbon")

whiskey_sour = Cocktail.create(name: "Whiskey sour")
ws_img = URI.open('https://res.cloudinary.com/deo4sjfc8/image/upload/v1580240903/djjxf9ty0haqdid6kkia.jpg')
whiskey_sour.photo.attach(io: ws_img, filename: 'ws_img.jpg', content_type: 'image/png')

mojito = Cocktail.create(name: "Mojito")
mj_img = URI.open('https://res.cloudinary.com/deo4sjfc8/image/upload/v1580242744/psth9zhfu6xdt23u597u.jpg')
mojito.photo.attach(io: mj_img, filename: 'mj_img.jpg', content_type: 'image/png')

Dose.create(description: "50ml", ingredient: bourbon, cocktail: whiskey_sour)
Dose.create(description: "35ml", ingredient: lemon_juice, cocktail: whiskey_sour)
