class AddPopulationToCountry < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :population, :integer
  end
end
