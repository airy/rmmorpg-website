class GameBaseItem < ActiveRecord::Base

	def item_types
		[
			'HEAD_SLOT_ITEM',  
			'NECK_SLOT_ITEM',  
			'SHOULDERS_SLOT_ITEM',
			'BACK_SLOT_ITEM',
			'CHEST_SLOT_ITEM',
			'WIRST_SLOT_ITEM',
			'WAIST_SLOT_ITEM',
			'PANTS_SLOT_ITEM',
			'FEET_SLOT_ITEM',
			'RING',
			'TRINKET',
			'MAINHAND_SLOT_ITEM',
			'OFFHAND_SLOT_ITEM',
			'RANGED_SLOT_ITEM',
			'AMNO_SLOT_ITEM',
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
	
