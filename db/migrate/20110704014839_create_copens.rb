class CreateCopens < ActiveRecord::Migration
  def self.up
    create_table :copens do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :copens
  end
end
