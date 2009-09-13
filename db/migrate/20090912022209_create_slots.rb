class CreateSlots < ActiveRecord::Migration
  def self.up
    create_table :slots do |t|
      t.string :code
      t.references :game_base_slot
      t.references :char
      t.references :contains

      t.timestamps
    end
  end

  def self.down
    drop_table :slots
  end
end
