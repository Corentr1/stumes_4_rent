class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def show
    find_costume
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

  def edit
    find_costume
  end

  def update
    find_costume
    if @costume.update(costume_params)
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  def destroy
    find_costume
    @costume.destroy
    redirect_to costumes_path
  end

  private

  def find_costume
    @costume = Costume.find(params[:id])
  end

  def costume_params
    params.require(:costume).permit(:name, :category, :size, :price_per_day, :available?, :image_url)
  end
end
