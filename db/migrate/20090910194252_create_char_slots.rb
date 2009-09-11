class CreateCharSlots < ActiveRecord::Migration
  def self.up
    create_table :char_slots do |t|
      t.string :code
      t.references :char
      t.string :slot_type
      t.references :contains

      t.timestamps
    end
  end

  def self.down
    drop_table :char_slots
  end
end
