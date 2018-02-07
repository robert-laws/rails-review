class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.belongs_to :country

      t.timestamps
    end
  end
end
