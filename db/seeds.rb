# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cocktail.destroy_all
# Ingredient.destroy_all
# cocktails_attributes = [
#   {
#     name:         "Mojito"

#   },
#   {
#     name:         "Pisco Sour"

#   },
#   {
#     name:         "Mint Julep"

#    },
#    {
#     name:         "Whiskey Sour"
#   },
#   {
#     name:         "Caipirinha"

#   }
# ]
# cocktails_attributes.each { |params| Cocktail.create!(params) }

# Ingredient.create(name: "Lime")
# Ingredient.create(name: "Sugar")
# Ingredient.create(name: "Rum")
# Ingredient.create(name: "Cachaça")
# Ingredient.create(name: "Mint")
# Ingredient.create(name: "Cream")
# Ingredient.create(name: "Gyn")
Cocktail.destroy_all
Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)

ingredients["drinks"].each do |i|
Ingredient.create(name: i["strIngredient1"])
end`
