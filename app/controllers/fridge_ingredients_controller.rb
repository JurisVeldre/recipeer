class FridgeIngredientsController < ApplicationController
  before_action :set_ingredients, only: [:index, :create, :destroy]

  def index; end

  def create
    ingredient = FridgeIngredient.new(name: params[:name])

    if ingredient.save
      redirect_to action: "index"
      return
    end

    flash.now[:error] = "Ingredient already exists"

    render :index
  end

  def destroy
    if FridgeIngredient.find(params[:id]).destroy
      flash.now[:error] = "Ingredient deleted!"
    end

    render :index
  end

  private

  def set_ingredients
    @ingredients = FridgeIngredient.all
  end
end
