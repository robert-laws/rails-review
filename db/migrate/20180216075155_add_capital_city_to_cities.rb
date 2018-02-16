class AddCapitalCityToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :capital_city, :boolean, null: false, default: false
  end
end
