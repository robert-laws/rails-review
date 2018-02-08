require 'rails_helper'

describe 'navigate' do
  before do
    @country = Country.create(name: "Spain", capital: "Madrid")
  end

  it 'loads the show page' do
    visit "/countries/#{@country.id}"
    expect(page.status_code).to eq(200)
  end

  it 'has displays capital city' do
    visit "/countries/#{@country.id}"
    expect(page).to have_css("p", text: @country.capital)
  end
end