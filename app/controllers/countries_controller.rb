require 'pry'

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
    @country = Country.new
    @country.name = params[:name]
    @country.capital = params[:capital]
    @country.population = params[:population]
    @country.foundation_year = params[:foundation_year]
    @country.save

    redirect_to countries_path
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    @country.update(name: params[:name], capital: params[:capital], population: params[:population], foundation_year: params[:foundation_year])
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
end
