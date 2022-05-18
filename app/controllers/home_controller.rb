class HomeController < ApplicationController
  def index
    @recipies = Recipe.none
  end

  def get_recipes
    recipe_ids = RecipeGetter.get_recipes
    @recipies = Recipe.where(id: recipe_ids)

    render :index
  end
end
