class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times {@recipe.ingredients.build}
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save 
    end 
  end

  private 

  def recipe_params 
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
  
end
