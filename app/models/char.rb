class Char < ActiveRecord::Base
  belongs_to :user
  #belongs_to :parent, :class_name =>  'Char'
	

	def skills
		GameBaseSkill.all(:conditions => {:id => items.map{ |x| x.game_base_skill }}).uniq
	end
	
	def create_birth_right_item slot_type, item_name, quantity=1
		s = self.slots.by_type( slot_type ).first 
		GameBaseItem.find_by_name(item_name).generate_item(s, quantity)
	end
	
	#dummy code to remove
	
	after_create :create_birth_rights
	
	def create_birth_right_items
		create_birth_right_item 'HEAD_SLOT' , 'Bandana'
		create_birth_right_item 'CHEST_SLOT' , 'Shirt'
		create_birth_right_item 'LEGS_SLOT' , 'Jean'
		create_birth_right_item 'FEET_SLOT' , 'Sprint Shoes'
		create_birth_right_item 'RANGED_SLOT' , 'Sling'
		create_birth_right_item 'INVENTORY_SLOT' , 'Inventory'
		create_birth_right_item 'MAINHAND_SLOT' , 'Short Staff'
		create_birth_right_item 'OFFHAND_SLOT' , 'Pocket Knife'
		create_birth_right_item 'AMNO_SLOT' , 'Stone Bullet',100
		create_birth_right_item 'KEY_RING_SLOT' , 'Key Ring'
	end
	
	def create_birth_righ_slots
		GameBaseSlot.generate_birth_rights self
	end

	def create_birth_rights
		create_birth_righ_slots
		create_birth_right_items
	end
	
	# RED SPHERE - HP
	def base_hp
		100
	end
	
	def base_hp_stats
		{:sta => 25, :con => 25, :muscle => 25 }
	end
	
	#BLUE SPHERE - MP
	def base_mp
		100
	end
	
	def base_mp_stats
		{:int => 25, :wis => 25, :will => 25 }
	end
	
	#YELLOW SPHERE - AP
	def base_ap
		100
	end

	def base_ap_stats
		{:energy => 25, :dex => 25, :str => 25 }
	end
	
	def base_other_stats
		{:luck => 25, :regen => 25, :charisma => 25 }
	end
	
	#EOF dummy code
	before_create :get_code
	
private
	def get_code
		self.code = generate_code
	end   
	
end