require 'open-uri'

# Destroy existing records to avoid duplicates
Ingredient.destroy_all
Cocktail.destroy_all

# Add new ingredients from an API or a list
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json_data = URI.open(url).read
ingredients = JSON.parse(json_data)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.create(name: "Purple Rain")
Cocktail.create(name: "Gin and Tonic")
Cocktail.create(name: "Seven and Seven")
Cocktail.create(name: "Cuba Libre")
