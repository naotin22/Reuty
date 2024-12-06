class AddColumnUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :manage_flag, :boolean
    add_column :users, :stop_flag, :boolean   
  end
end
