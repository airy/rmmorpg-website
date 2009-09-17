class GameBaseSlot < ActiveRecord::Base
	#automatic code generation
	include Coded

	named_scope :birth_rights, :conditions => {:birth_right => true}

	
	def name
		slot_type
	end
	
	def self.generate_birth_rights char
		GameBaseSlot.birth_rights.each do |br|
			char.slots.create(:game_base_slot => br ).save!
		end
	end
end
	
