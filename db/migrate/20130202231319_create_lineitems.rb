class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.integer :profile_id
      t.integer :upgrade_id
      t.integer :event_id

      t.timestamps
    end
  end
end
