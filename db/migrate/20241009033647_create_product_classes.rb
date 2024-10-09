class CreateProductClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :product_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
