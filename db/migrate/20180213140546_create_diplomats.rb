class CreateDiplomats < ActiveRecord::Migration[5.1]
  def change
    create_table :diplomats do |t|
      t.string :name
      t.integer :country_id

      t.timestamps
    end
  end
end