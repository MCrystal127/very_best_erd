class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.text :dish_description
      t.string :venues_available
      t.integer :dish_price

      t.timestamps

    end
  end
end
