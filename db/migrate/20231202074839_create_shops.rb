class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :address
      t.string :phone_number
      t.string :opening_hours
      t.string :image
      t.string :website
      t.string :place_id, null: false
      t.decimal :latitude, precision: 10, scale: 7, null: false
      t.decimal :longitude, precision: 10, scale: 7, null: false
      t.float :rating
      t.integer :total_ratings
      t.integer :price_level

      t.timestamps
    end
    add_index :shops, :place_id, unique: true
  end
end
