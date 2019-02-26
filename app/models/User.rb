class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    recipes.max_by(3) do |card|
      card.rating
    end
  end

  def most_recent_recipe
    recipes.last
  end

  def self.all
    @@all
  end
end
