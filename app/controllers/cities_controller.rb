class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.save
    redirect_to city_path(@city)
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    @city.update(city_params)
    redirect_to city_path(@city)
  end

  private

  def city_params
    params.require(:city).permit(:name, :population, :country_id)
  end
end