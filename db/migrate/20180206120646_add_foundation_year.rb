class AddFoundationYear < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :foundation_year, :integer
  end
end
