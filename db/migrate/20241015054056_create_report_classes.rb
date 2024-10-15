class CreateReportClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :report_classes do |t|
      t.string :comment

      t.timestamps
    end
  end
end
