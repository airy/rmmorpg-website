class CreateReputations < ActiveRecord::Migration
  def self.up
    create_table :reputations do |t|
      t.string :code
      t.references :char
      t.references :game_base_faction
      t.string :status
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :reputations
  end
end
