class AddWalkerToServices < ActiveRecord::Migration[6.0]
  def change
    add_reference :services, :walker, null: false, foreign_key: true
  end
end
