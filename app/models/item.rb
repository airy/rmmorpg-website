class Item < ActiveRecord::Base
	belongs_to :container, :polymorphic => true
	belongs_to :game_base_item
	belongs_to :created_by #class_name => 'AbilityLog'
	#belongs_to :visual_model, :class_name => 'GameBaseItem'
	belongs_to :bound_to, :class_name => 'Char'
	
	def binding_checks?
		true
	end
	
	def bind(user)
		self.bound_to = user
		# Write to Action Log
		self.save
	end
	
	def name
		game_base_item.name
	end
	
	
	before_create :get_code

private
	def get_code
		self.code = generate_code
	end   

end
