class RecipeGetter
  class << self
    def get_recipes
      recipes = []

      Recipe.all.each do |recipe|
        get_ingredients.each do |ingredient|
          recipes << recipe.id if recipe.ingredients.include?(ingredient)
        end
      end

      recipes
    end

    def get_ingredients
      FridgeIngredient.pluck(:name)
    end
  end
end
