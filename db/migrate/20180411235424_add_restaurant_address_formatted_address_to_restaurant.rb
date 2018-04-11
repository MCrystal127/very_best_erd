class AddRestaurantAddressFormattedAddressToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :restaurant_address_formatted_address, :string
  end
end
