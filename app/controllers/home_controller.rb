class HomeController < ApplicationController
  def index
    @recipies = Recipe.limit(5)
  end
end
