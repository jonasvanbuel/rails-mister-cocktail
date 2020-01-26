class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end
  def create
    description = dose_params[:description]
    ingredient = Ingredient.find(dose_params[:ingredient].to_i)
    cocktail = Cocktail.find(params[:cocktail_id].to_i)
    @dose = Dose.create({ description: description, ingredient: ingredient, cocktail: cocktail })
    redirect_to cocktails_path
  end
  def destroy
    @dose = Dose.find(dose_params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:id, :description, :ingredient)
  end
end
