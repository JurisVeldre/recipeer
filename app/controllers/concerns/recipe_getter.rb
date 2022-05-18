class RecipeGetter
  class << self
    def get_recipes
      recipe_ids = []

      Recipe.all.each do |recipe|
        matcher = []

        get_ingredients.each do |ingredient|
          if recipe.ingredients.include?(ingredient)
            matcher << true
          else
            matcher << false
          end
        end

        recipe_ids << recipe.id if matcher.uniq == [true]
      end

      recipe_ids
    end

    def get_ingredients
      FridgeIngredient.pluck(:name)
    end
  end
end
