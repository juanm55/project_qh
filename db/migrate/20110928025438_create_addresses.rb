class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :name
      t.text :description
      t.integer :place_id
      t.boolean :main_venue

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
