class CreateWalkers < ActiveRecord::Migration[6.0]
  def change
    create_table :walkers do |t|
      t.string :walker_name
      t.text :biography
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
