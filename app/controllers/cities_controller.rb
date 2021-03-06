class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
    render layout: 'new_city'
  end

  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to city_path(@city), notice: "You have successfully created a new city"
    else
      render :new
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      flash[:notice] = "You have successfully updated #{@city.name}."
      redirect_to city_path(@city)
    else
      render :edit
    end
  end

  def destroy
    City.find(params[:id]).destroy
    redirect_to cities_path
  end

  private

  def city_params
    params.require(:city).permit(:name, :population, :country_id, :capital_city)
  end
end