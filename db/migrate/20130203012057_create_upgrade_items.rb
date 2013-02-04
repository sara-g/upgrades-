class CreateUpgradeItems < ActiveRecord::Migration
  def change
    create_table :upgrade_items do |t|
      t.integer :lineitem_id
      t.integer :upgrade_id

      t.timestamps
    end
  end
end
