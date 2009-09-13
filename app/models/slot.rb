class Slot < ActiveRecord::Base
	belongs_to :char
	belongs_to :contains, :class_name => 'Item'
	belongs_to :game_base_slot
	
	named_scope :by_type, lambda { |t| { :joins => :game_base_slot, :conditions => ["slot_type = ?", t]}}

	def slot_type
		game_base_slot.slot_type
	end
	
	before_create :get_code
	
private
	def get_code
		self.code = generate_code
	end   
end
