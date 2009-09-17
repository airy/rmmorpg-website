class GameBaseSkillReagent < ActiveRecord::Base
	#automatic code generation
	include Coded

  belongs_to :game_base_skill
  belongs_to :game_base_item
end
