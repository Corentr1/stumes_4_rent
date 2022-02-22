class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :category, :size, :price_per_day, :available?, :image_url)
  end
end
