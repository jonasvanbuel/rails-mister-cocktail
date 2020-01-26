# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lemon_juice = Ingredient.create(name: "lemon juice")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
whiskey = Ingredient.create(name: "whiskey")
bourbon = Ingredient.create(name: "bourbon")

whiskey_sour = Cocktail.create(name: "Whiskey sour")
Cocktail.create(name: "Mojito")

Dose.create(description: "50ml", ingredient: bourbon, cocktail: whiskey_sour)
Dose.create(description: "35ml", ingredient: lemon_juice, cocktail: whiskey_sour)
