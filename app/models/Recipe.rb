class Recipe
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(self, ingredient)
  end

  def allergens
    self.ingredients.select do |ri|
      Allergen.all.select do |allergen|
        allergen.ingredient == ri.ingredient
      end
    end
  end

  def self.most_popular
    Recipe.all.max_by do |recipe|
      result = RecipeCard.all.select do |rc|
        rc.recipe == recipe
      end
      result.count
    end
  end

  def self.all
    @@all
  end

end
