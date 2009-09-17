class GameBaseSkill < ActiveRecord::Base
	has_many :game_base_skill_reagents
	#has_many :reagents, :through => :game_base_skill_reagents, :class_name => :game_base_items


  before_create :get_code

	def skill_schools
		[
			'Tailoring',  
			'Jewelcrafting',  
			'Enchanting',
			'Blacksmithing',
			'Summoning',
			'Shadow',
			'Fire',
			'Holy',
			'Frost',
			'Melee',
			'Ranged'
		]
	end
private
	def get_code
		self.code = generate_code
	end   
end
