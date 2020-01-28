class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(dose_params[:ingredient])
    @dose = Dose.create(description: dose_params[:description], cocktail: @cocktail, ingredient: @ingredient)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  def destroy
    @dose = Dose.find(dose_params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
