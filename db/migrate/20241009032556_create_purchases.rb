class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
