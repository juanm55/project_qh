class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.integer :user_id                  #asociado al usuario user_id
      t.string :name                      #nombre para mostrar
      t.integer :cplace_id                #categoria del establecimiento attr_accessible ##referencias a cplaces
      t.integer :cmoney_id                #categoria de plata, attr_accessible
      t.integer :copen_id                 #categoria de horarios, attr_accessible
      t.string :description               #descripcion del establecimiento, attr_accessible

      t.timestamps
    end
    add_index :places, :user_id           #para crear los indices por usuario
    add_index :places, :cplace_id         #para crear los indices por usuario
    add_index :places, :cmoney_id         #para crear los indices por usuario
    add_index :places, :copen_id          #para crear los indices por usuario
  end

  def self.down
    drop_table :places
  end
end
