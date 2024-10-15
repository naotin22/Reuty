class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :report_comment

      t.timestamps
    end
  end
end
