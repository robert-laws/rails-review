class AddMembershipYearToCountries < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :membership_year, :integer
  end
end
