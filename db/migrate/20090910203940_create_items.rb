class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.references :container, :polymorphic => true
      t.references :game_base_item
	  t.integer :item_level, :default => 1
      t.string :code
      t.references :created_by
      t.references :visual_model
	  t.references :bound_to

	  t.integer :stack_size, :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
