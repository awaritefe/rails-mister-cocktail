class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(strong_params)
    @cocktail.save

    redirect_to cocktails_path(@cocktails)
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(strong_params)

    redirect_to cocktails_path(@cocktails)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def strong_params
    params.require(:cocktails).permit(:name)
  end

end


