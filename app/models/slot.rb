class Slot < ActiveRecord::Base
	belongs_to :char
	belongs_to :game_base_slot
	has_one :item, :as => :container, :dependent => :destroy
	
	named_scope :by_type, lambda { |t| { :joins => :game_base_slot, :conditions => ["slot_type = ?", t]}}

	def name
		"#{slot_type} of #{char.name}"
	end
	
	before_create :get_code
	
private
	def get_code
		self.code = generate_code
	end   
end
