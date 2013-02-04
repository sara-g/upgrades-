class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
