class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :content
      t.integer :type
      t.integer :res_do
      t.integer :del_flg

      t.timestamps
    end
  end
end
