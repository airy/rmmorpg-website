class CreateGameBaseItems < ActiveRecord::Migration
  def self.up
    create_table :game_base_items do |t|
      t.string :name
      t.string :code
      t.string :item_type

      t.string :binding
	  
	  #container type objects
	  t.integer :capacity, :deault => 0
	  t.text :accepts
	  t.references :visual_model #visual model is the 3D model of object
	  t.references :icon
	  
	  t.integer :max_stack_size, :default => 1
	  
	  t.string :binding
	  t.string :damage_dice
	  t.string :range

      t.timestamps
    end
  end

  def self.down
    drop_table :game_base_items
  end
end
