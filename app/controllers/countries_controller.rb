class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    
    if @country.save
      redirect_to countries_path
    else
      render :new
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    @country.update(country_params)
    redirect_to country_path(@country)
  end
  
  def change_membership
    country = Country.find(params[:id])
    if country.eu_membership
      country.update(eu_membership: false)
    else
      country.update(eu_membership: true)
    end
    redirect_to country_path(country)
  end

  private

  def country_params
    params.require(:country).permit(:name, :capital, :population, :foundation_year)
  end
end
