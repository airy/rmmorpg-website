class Slot < ActiveRecord::Base
	#automatic code generation
	include Coded


	belongs_to :char
	belongs_to :game_base_slot
	has_one :item, :as => :container, :dependent => :destroy
	
	#belongs_to :game_base_skill, :through => :item, :include => :game_base_item
	
	validates_uniqueness_of :game_base_slot_id, :scope => :char_id
	
	
	
	delegate :slot_type, 
		:accepts, 
		:birth_right,
		:icon, 
	:to => :game_base_slot
	
	#delegate :game_base_skill, :to => :item
	

	
	named_scope :by_type, lambda { |t| { :joins => :game_base_slot, :conditions => ["slot_type = ?", t]}}
	
	
	def current_icon
		if item && item.icon
			item.icon 		
		else
			icon 
		end
	end

	def name
		"#{slot_type} of #{char.name}"
	end
	
end
