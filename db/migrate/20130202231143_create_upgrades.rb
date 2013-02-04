class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.integer :profile_id
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
