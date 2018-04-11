class CreateCuisineTags < ActiveRecord::Migration
  def change
    create_table :cuisine_tags do |t|
      t.string :cuisine_type

      t.timestamps

    end
  end
end
