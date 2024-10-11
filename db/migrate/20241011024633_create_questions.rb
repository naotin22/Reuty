class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end
end
