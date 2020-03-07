class AddIsWalkerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_walker, :boolean
  end
end
