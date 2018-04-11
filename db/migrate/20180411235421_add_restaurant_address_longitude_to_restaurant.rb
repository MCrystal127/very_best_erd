class AddRestaurantAddressLongitudeToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :restaurant_address_longitude, :float
  end
end
