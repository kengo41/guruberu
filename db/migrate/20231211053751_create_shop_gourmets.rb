class CreateShopGourmets < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_gourmets do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :gourmet, null: false, foreign_key: true

      t.timestamps
    end
    add_index :shop_gourmets, [:shop_id, :gourmet_id], unique: true
  end
end
