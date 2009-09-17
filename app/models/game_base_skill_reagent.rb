class GameBaseSkillReagent < ActiveRecord::Base
  belongs_to :game_base_skill
  belongs_to :game_base_item
  
	
	before_create :get_code

private
	def get_code
		self.code = generate_code
	end   

end
