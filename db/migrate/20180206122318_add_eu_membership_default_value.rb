class AddEuMembershipDefaultValue < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :eu_membership, :boolean, null: false, default: true
  end
end
