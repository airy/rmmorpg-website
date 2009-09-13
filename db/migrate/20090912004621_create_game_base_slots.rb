class CreateGameBaseSlots < ActiveRecord::Migration
  def self.up
    create_table :game_base_slots do |t|
      t.string :code
      t.string :slot_type
      t.text :accepts
      t.boolean :birth_right

      t.timestamps
    end
  end

  def self.down
    drop_table :game_base_slots
  end
end
