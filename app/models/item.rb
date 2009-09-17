class Item < ActiveRecord::Base
	belongs_to :container, :polymorphic => true
	belongs_to :game_base_item
	belongs_to :created_by #class_name => 'AbilityLog'
	belongs_to :visual_model, :class_name => 'GameBaseItem'
	belongs_to :bound_to, :class_name => 'Char'
	
	delegate :name, 
		:slot_type, 
		:item_type, 
		:item_sub_type, 
		:binding_type, 
		:capacity, 
		:game_base_skill, 
		:accepts, 
		:max_stack_size, 
		:range, 
		:damage_bonus, 
		:icon,
	:to => :game_base_item
	
	def binding_checks?
		true
	end
	
	def bind_to_char char
		self.bound_to = char
		# Write to Action Log
		self.save
	end
	
	
	
	before_create :get_code

private
	def get_code
		self.code = generate_code
	end   

end
