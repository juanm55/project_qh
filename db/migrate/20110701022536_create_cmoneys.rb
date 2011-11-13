class CreateCmoneys < ActiveRecord::Migration
  def self.up
    create_table :cmoneys do |t|
      t.integer :name

      t.timestamps
    end
  end

  def self.down
    drop_table :cmoneys
  end
end
