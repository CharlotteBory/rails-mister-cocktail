class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all.order(:name)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail: @cocktail)
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.photo.attach(io: File.open('cocktails'), filename: "cocktail-#{(1..45).to_a.sample}.png") unless @cocktail.photo.attached?
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
