class DosesController < ApplicationController
  before_action :set_cocktail, only: [ :new, :create ]

  def new
    @dose = Dose.new
    #@cocktail = Cocktail.find(params[:cocktail_id])

  end

  def create
    #@cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
