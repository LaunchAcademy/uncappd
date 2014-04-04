class BeersController < ApplicationController
  def index
    @beers =  Beer.all
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      redirect_to beers_path, notice: "Good job"
    else
      flash.now[:error] = "You did something wrong"
      render :new
    end
  end

  protected
  def beer_params
    params.require(:beer).permit(:name, :style, :description, :rating)
  end
end
