require_relative '../config/environment.rb'
matt = User.new("Matt")
anders = User.new("Anders")
timmy = User.new("Timmy")
pete = User.new("Pete")


noodles = Recipe.new("Noodles")
salad = Recipe.new("Salad")


RecipeCard.new(matt, noodles, "today", 10)
RecipeCard.new(matt, salad, "today", 6)
RecipeCard.new(anders, noodles, "yesterday", 8)
RecipeCard.new(pete, noodles, "yesterday", 3)
RecipeCard.new(matt, salad, "today", 8)
RecipeCard.new(matt, salad, "today", 9)

tomato = Ingredient.new("Tomato")
potato = Ingredient.new("Potato")
milk = Ingredient.new("Milk")
beef = Ingredient.new("Beef")
carrot = Ingredient.new("Carrot")
noodles.add_ingredients(potato)
noodles.add_ingredients(tomato)

anders.declare_allergen(tomato)
anders.declare_allergen(potato)
matt.declare_allergen(milk)
matt.declare_allergen(carrot)
pete.declare_allergen(milk)
timmy.declare_allergen(milk)
binding.pry
