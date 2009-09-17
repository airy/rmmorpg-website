class CreateGameBaseSkillReagents < ActiveRecord::Migration
  def self.up
    create_table :game_base_skill_reagents do |t|
      t.string :code
      t.references :game_base_skill
      t.references :game_base_item
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :game_base_skill_reagents
  end
end
