class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new(strong_params)
    @ingredient.save

    redirect_to ingredients_path(@ingredients)
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(strong_params)

    redirect_to ingredients_path(@ingredients)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to ingredients_path
  end

  private

  def strong_params
    params.require(:ingredients).permit(:name)
  end

end
