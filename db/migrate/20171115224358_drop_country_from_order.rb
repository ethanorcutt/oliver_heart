class DropCountryFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :country_id
    remove_column :users, :country_id
  end
end
