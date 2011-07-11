class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :title
      t.string :content

      t.timestamps
    end
    
    add_index :comments, :user_id 
    add_index :comments, :place_id     
  end

  def self.down
    drop_table :comments
  end
end
