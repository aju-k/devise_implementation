class RecipesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def create
    if params[:name].present? && params[:description].present?
      @recipe = Recipe.add_recipe(params)
    end
  end



end
