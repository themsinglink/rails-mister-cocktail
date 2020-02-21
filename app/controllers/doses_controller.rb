class DosesController < ApplicationController

  # def index
  # @cocktails = Cocktail.all
  # end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.new(params[:id]) # I looked this up, why s it not: (params[:dose_id]) ? what is the difference?
    @dose.destroy
    redirect_to cocktail_path #difference between different paths?
  end

private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end

