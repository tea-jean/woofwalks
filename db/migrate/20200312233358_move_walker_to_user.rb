class MoveWalkerToUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :walker_id
    drop_table :walkers
    add_column :users, :name, :string
    add_column :users, :biography, :string
    add_referenceherok :services, :user
  end
end
