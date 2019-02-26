class Ingredient
 attr_accessor :name
 @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    Ingredient.all.max_by do |ingredient|
      result = Allergen.all.select do |allergen|
        allergen.ingredient == ingredient
      end
      result.count
    end
  end

end
