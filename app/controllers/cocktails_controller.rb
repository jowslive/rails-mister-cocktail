class CocktailsController < ApplicationController
  before_action :find, only: %i[show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image, :bootstrap_color)
  end

  # before show, edit, update and destroy run this code!
  def find
    @cocktail = Cocktail.find(params[:id])
  end
end
