class GameBaseSlot < ActiveRecord::Base
	named_scope :birth_rights, :conditions => {:birth_right => true}

	before_create :get_code
	
	def self.generate_birth_rights char
		GameBaseSlot.birth_rights.each do |br|
			char.slots.create(:game_base_slot => br ).save!
		end
	end
 
private
	def get_code
		self.code = generate_code
	end   
end
	
