class CreateCplaces < ActiveRecord::Migration
  def self.up
    create_table :cplaces do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :cplaces
  end
end
