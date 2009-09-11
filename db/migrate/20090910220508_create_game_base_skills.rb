class CreateGameBaseSkills < ActiveRecord::Migration
  def self.up
    create_table :game_base_skills do |t|
      t.string :name
      t.string :code
      t.string :school
      t.string :cost
      t.integer :cooldown
      t.integer :casttime
      t.integer :duration
      t.string :mechanic
      t.string :dispel_type

      t.timestamps
    end
  end

  def self.down
    drop_table :game_base_skills
  end
end
