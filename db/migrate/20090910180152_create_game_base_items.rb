class CreateGameBaseItems < ActiveRecord::Migration
  def self.up
    create_table :game_base_items do |t|
      t.string :name
      t.string :code
      t.string :slot_type
      t.string :item_type
      t.string :item_sub_type

	  t.references :game_base_skill # if the item provides a skill
	  
      t.string :binding_type
	  
	  #container type objects
	  t.integer :capacity, :deault => 0
	  t.text :accepts
	  t.references :visual_model #visual model is the 3D model of object
	  t.string :icon
	  
	  t.integer :max_stack_size, :default => 1
	  
	  t.string :binding
	  t.integer :damage_bonus
	  t.string :range

      t.timestamps
    end
  end

  def self.down
    drop_table :game_base_items
  end
end
