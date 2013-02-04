class CreateItemUpgrades < ActiveRecord::Migration
  def change
    create_table :item_upgrades do |t|
      t.integer :upgrade_id
      t.integer :event_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
