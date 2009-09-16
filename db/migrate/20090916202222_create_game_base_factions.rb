class CreateGameBaseFactions < ActiveRecord::Migration
  def self.up
    create_table :game_base_factions do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :game_base_factions
  end
end
