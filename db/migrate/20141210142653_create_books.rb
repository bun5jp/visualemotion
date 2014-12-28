class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :amazon_link
      t.integer :category_id
      t.text :note
      t.integer :del_flg

      t.timestamps
    end
  end
end
