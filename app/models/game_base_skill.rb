class GameBaseSkill < ActiveRecord::Base
	#automatic code generation
	include Coded

	has_many :game_base_skill_reagents
	#has_many :reagents, :through => :game_base_skill_reagents, :class_name => :game_base_items

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
end
