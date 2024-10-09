class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :explanation
      t.integer :user_id
      t.integer :product_class_id
      t.string :image
      t.string :sale

      t.timestamps
    end
  end
end
