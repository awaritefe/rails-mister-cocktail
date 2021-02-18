require 'json'
require 'open-uri'

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients_list = JSON.parse(user_serialized)

ingredients_list['drinks'].each do |i|
  ingredient = Ingredient.create(name: i["strIngredient1"])
puts "Created #{ingredient.name}!"
end
