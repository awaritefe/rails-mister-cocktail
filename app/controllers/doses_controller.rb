class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def create
    @dose = Dose.new(strong_params)
    @dose.save

    redirect_to doses_path(@doses)
  end

  def new
    @dose = Dose.new
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(strong_params)

    redirect_to doses_path(@doses)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to doses_path
  end

  private

  def strong_params
    params.require(:doses).permit(:name)
  end

end
