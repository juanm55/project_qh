class CreateCategorizations < ActiveRecord::Migration
  def self.up
    create_table :categorizations do |t|
      t.integer :place_id
      t.integer :cplace_id
      t.boolean :maincplace

      t.timestamps
    end
  end

  def self.down
    drop_table :categorizations
  end
end
