class CreateGourmets < ActiveRecord::Migration[7.0]
  def change
    create_table :gourmets do |t|
      t.string :name, null: false
      t.text :description
      t.string :image
      t.references :prefecture, foreign_key: true

      t.timestamps
    end
  end
end
