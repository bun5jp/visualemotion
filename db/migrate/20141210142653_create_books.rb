class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :amazon_link
      t.integer :category_id,:limit => 10
      t.text :note
      t.integer :del_flg,:limit => 1

      t.timestamps
    end
  end
end
