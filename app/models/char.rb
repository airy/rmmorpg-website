class Char < ActiveRecord::Base
  belongs_to :user
  #belongs_to :parent, :class_name =>  'Char'

  before_create :get_code
  after_create :create_birth_rights
  
  validates_uniqueness_of :name
  
  def birth_right_slots
	[
		'HEAD_SLOT',
		'NECK_SLOT',
		'SHOULDERS_SLOT',
		'BACK_SLOT',
		'CHEST_SLOT',
		'WIRST_SLOT',
		'HANDS_SLOT',
		'WAIST_SLOT',
		'LEGS_SLOT',
		'FEET_SLOT',
		'RING_SLOT_1',
		'RING_SLOT_2',
		'TRINKET_SLOT_1',
		'TRINKET_SLOT_2',
		'MAINHAND_SLOT',
		'OFFHAND_SLOT',
		'RANGED_SLOT',
		'AMNO_SLOT',
		'BAG_SLOT_1',
		'BAG_SLOT_2',
		'BAG_SLOT_3',
		'BAG_SLOT_4',
		'BAG_SLOT_5',
		'KEY_RING',
		'ABILITY_SLOT_1',
		'ABILITY_SLOT_2',
		'ABILITY_SLOT_3',
		'ABILITY_SLOT_4',
		'ABILITY_SLOT_5',
		'ABILITY_SLOT_6',
		'ABILITY_SLOT_7',
		'ABILITY_SLOT_8',
		'PROFFIENCY_SLOT_1',
		'PROFFIENCY_SLOT_2'
	]
  end
  
  def birth_right_items
	[
		'HEAD_SLOT',
		'NECK_SLOT',
		'SHOULDERS_SLOT',
		'BACK_SLOT',
		'CHEST_SLOT',
		'WIRST_SLOT',
		'HANDS_SLOT',
		'WAIST_SLOT',
		'PANTS_SLOT',
		'FEET_SLOT',
		'RING_SLOT_1',
		'RING_SLOT_2',
		'TRINKET_SLOT_1',
		'TRINKET_SLOT_2',
		'MAINHAND_SLOT',
		'OFFHAND_SLOT',
		'RANGED_SLOT',
		'BAG_SLOT_1',
		'BAG_SLOT_2',
		'BAG_SLOT_3',
		'BAG_SLOT_4',
		'BAG_SLOT_5',
		'KEY_RING'
	]
  end
  

	def create_birth_right_slots
		birth_right_slots.each do |br|
			slot = self.slots.new
			slot.slot_type = br
			slot.save
		end
	end
	
	def create_birth_right_item slot, base_item, quantity=1
		slot = self.slots.find_by_slot_type( slot)
		gbi = GameBaseItem.find_by_name(base_item)
		
		gbi.generate_item(slot,quantity) if gbi
	end
	
	def create_birth_right_items
		create_birth_right_item 'HEAD_SLOT' , 'Bandana'
		create_birth_right_item 'CHEST_SLOT' , 'Shirt'
		create_birth_right_item 'LEGS_SLOT' , 'Jean'
		create_birth_right_item 'FEET_SLOT' , 'Sprint Shoes'
		create_birth_right_item 'RANGED_SLOT' , 'Sling'
		create_birth_right_item 'BAG_SLOT_1' , 'Inventory'
		create_birth_right_item 'MAINHAND_SLOT' , 'Short Staff'
		create_birth_right_item 'OFFHAND_SLOT' , 'Pocket Knife'
		create_birth_right_item 'AMNO_SLOT' , 'Stone Bullets',100
	end
	
	def create_birth_rights
		create_birth_right_slots
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