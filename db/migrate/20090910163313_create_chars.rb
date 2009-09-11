class CreateChars < ActiveRecord::Migration
  def self.up
    create_table :chars do |t|
      t.references :user
      t.string :code
      t.string :name
      t.string :gender, :default => "Male"
      t.datetime :played_time
      t.references :parent
	  
	  t.integer :money, :default => 0
	  
	  #location and movement of character
	  t.string :zone, :default => 'Starters Area'
	  
	  t.integer :position_x, :default => 0
	  t.integer :position_y, :default => 0
	  t.integer :position_z, :default => 0
	  
	  t.integer :movement_direction, :default => 0
	  t.integer :movement_speed, :default => 0
	  
	  t.integer :current_hp, :default => 100
	  t.integer :current_mp, :default => 100
	  t.integer :current_ap, :default => 100
	  
	  t.string :status, :default => 'Alive'
	  
	  
	  # these stats are same for all chars atm. no need to put it in DB
	  # it may be usefull for multi race/class game
	  
	  #t.integer :base_hp, :default => 100  #naked health of char
	  #t.integer :base_mp, :default => 100 #naked mana of char
	  #t.integer :base_ap, :default => 100 #naked action points of char
	  

      t.timestamps
    end
  end

  def self.down
    drop_table :chars
  end
end
