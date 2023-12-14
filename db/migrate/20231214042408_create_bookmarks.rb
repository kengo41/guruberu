class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.references :bookmark_list, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
    add_index :bookmarks, [:bookmark_list_id, :shop_id], unique: :true
  end
end
