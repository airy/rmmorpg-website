class GameBaseItem < ActiveRecord::Base

	def slot_types
		[
			'HEAD_SLOT',  
			'NECK_SLOT',  
			'SHOULDERS_SLOT',
			'BACK_SLOT',
			'CHEST_SLOT',
			'WIRST_SLOT',
			'WAIST_SLOT',
			'PANTS_SLOT',
			'FEET_SLOT',
			'RING',
			'TRINKET',
			'MAINHAND_SLOT',
			'OFFHAND_SLOT',
			'RANGED_SLOT',
			'AMNO_SLOT',
			'CONTAINER_BAG',
			'KEY',
			'ABILITY_STONE',
			'PROFFIENCY'
		]
	end
	
	def is_container?
		capacity > 0
	end
	
	def is_stackable?
		max_stack_size > 1
	end

	def generate_item container, quantity=1
		i = Item.new
		i.game_base_item = self
		i.container = container
		i.visual_model = i.game_base_item
		i.stack_size = quantity
		i.save
		container.contains = i
		container.save
	end
  before_create :get_code

private
	def get_code
		self.code = generate_code
	end   
end
	
