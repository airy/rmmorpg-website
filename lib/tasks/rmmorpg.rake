require 'rubygems'
require 'activerecord'

require 'lib/ar_code_generate.rb'

namespace :gamebase do

	desc "Destroys and Creates GameBaseSlots"
	task :create_game_base_slots => :environment do
		GameBaseSlot.destroy_all
		
		GameBaseSlot.create(:slot_type => "HEAD_SLOT", :accepts => "HEAD_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "NECK_SLOT", :accepts => "NECK_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "SHOULDERS_SLOT", :accepts => "SHOULDERS_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "BACK_SLOT", :accepts => "BACK_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "CHEST_SLOT", :accepts => "CHEST_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "WIRST_SLOT", :accepts => "WIRST_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "HANDS_SLOT", :accepts => "HANDS_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "WAIST_SLOT", :accepts => "WAIST_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "LEGS_SLOT", :accepts => "LEGS_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "FEET_SLOT", :accepts => "FEET_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "RING_SLOT_1", :accepts => "RING_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "RING_SLOT_2", :accepts => "RING_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "TRINKET_SLOT_1", :accepts => "TRINKET_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "TRINKET_SLOT_2", :accepts => "TRINKET_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "MAINHAND_SLOT", :accepts => "MAINHAND_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "OFFHAND_SLOT", :accepts => "OFFHAND_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "RANGED_SLOT", :accepts => "RANGED_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "AMNO_SLOT", :accepts => "AMNO_SLOT_ITEM", :birth_right => true ).save!
		
		GameBaseSlot.create(:slot_type => "INVENTORY_SLOT", :accepts => "INVENTORY_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "BAG_SLOT_1", :accepts => "CONTAINER_BAG", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "BAG_SLOT_2", :accepts => "CONTAINER_BAG", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "BAG_SLOT_3", :accepts => "CONTAINER_BAG", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "BAG_SLOT_4", :accepts => "CONTAINER_BAG", :birth_right => true ).save!

		GameBaseSlot.create(:slot_type => "BANK_SLOT", :accepts => "BANK_SLOT_ITEM", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_1", :accepts => "CONTAINER_BAG" ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_2", :accepts => "CONTAINER_BAG" ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_3", :accepts => "CONTAINER_BAG" ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_4", :accepts => "CONTAINER_BAG" ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_5", :accepts => "CONTAINER_BAG" ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_6", :accepts => "CONTAINER_BAG" ).save!
		GameBaseSlot.create(:slot_type => "BANK_BAG_SLOT_7", :accepts => "CONTAINER_BAG" ).save!

		GameBaseSlot.create(:slot_type => "KEY_RING_SLOT", :accepts => "KEY_RING", :birth_right => true ).save!
		
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_1", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_2", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_3", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_4", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_5", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_6", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_7", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "ABILITY_SLOT_8", :accepts => "ABILITY_STONE", :birth_right => true ).save!
		
		
		#PROFFIENCIES
		GameBaseSlot.create(:slot_type => "PROFIENCY_SLOT_1", :accepts => "PROFIENCY", :birth_right => true ).save!
		GameBaseSlot.create(:slot_type => "PROFIENCY_SLOT_2", :accepts => "PROFIENCY", :birth_right => true ).save!
		
	end
	
	desc "Destroys and Creates GameBaseItems"
	task :create_game_base_items => :environment do
		GameBaseItem.destroy_all
			
		GameBaseItem.create(:name => "Inventory", :slot_type => "INVENTORY_SLOT", :binding => "Bind on Pickup", :capacity => 20 , :accepts => "*" ).save!
		GameBaseItem.create(:name => "Short Staff", :slot_type => "MAINHAND_SLOT", :item_type => "WEAPON", :item_sub_type => "ONE HAND WEAPON", :binding => "Bind on Equip", :range => "1m", :damage_dice => "d4" ).save!
		GameBaseItem.create(:name => "Staff", :slot_type => "DUALHAND_SLOT", :item_type => "WEAPON", :item_sub_type => "TWO HAND WEAPON", :binding => "Bind on Equip", :range => "2m", :damage_dice => "d6" ).save!
		GameBaseItem.create(:name => "Pocket Knife", :slot_type => "OFFHAND_SLOT", :item_type => "WEAPON", :item_sub_type => "OFF HAND WEAPON", :binding => "Bind on Equip", :range => "1m", :damage_dice => "d6" ).save!
		GameBaseItem.create(:name => "Sling", :slot_type => "RANGED_SLOT", :item_type => "WEAPON", :item_sub_type => "RANGED WEAPON", :binding => "Bind on Equip", :range => "35m", :damage_dice => "d4" ).save!
		GameBaseItem.create(:name => "Shirt", :slot_type => "CHEST_SLOT", :binding => "Bind on Equip" ).save!
		GameBaseItem.create(:name => "Jean", :slot_type => "LEGS_SLOT", :binding => "Bind on Equip" ).save!
		GameBaseItem.create(:name => "Stone Bullet", :slot_type => "AMNO_SLOT", :item_type => "AMNO", :item_sub_type => "SLING AMNO", :max_stack_size => 250 ).save!
		GameBaseItem.create(:name => "Granite Bullet", :slot_type => "AMNO_SLOT", :item_type => "AMNO", :item_sub_type => "SLING AMNO", :max_stack_size => 150 ).save!
		GameBaseItem.create(:name => "Cowboy Hat", :slot_type => "HEAD_SLOT", :binding => "Bind on Equip").save!
		GameBaseItem.create(:name => "Bandana", :slot_type => "HEAD_SLOT", :binding => "Bind on Equip").save!
		GameBaseItem.create(:name => "Sprint Shoes", :slot_type => "FEET_SLOT", :binding => "Bind on Equip").save!
		GameBaseItem.create(:name => 'Key Ring', :slot_type => 'KEY_RING_SLOT',:capacity => 1000, :accepts => 'KEY', :binding => 'Bind on Pickup').save!
		
		GameBaseItem.create(:name => "Arcane Dust", :slot_type => "ENCHANTING_MATERIAL", :max_stack_size => 20).save!
		GameBaseItem.create(:name => "Void Crystal", :slot_type => "ENCHANTING_MATERIAL", :max_stack_size => 20).save!
		GameBaseItem.create(:name => "Large Prismatic Shard", :slot_type => "ENCHANTING_MATERIAL", :max_stack_size => 20).save!

		GameBaseItem.create(:name => "Linen Cloth", :slot_type => "CLOTH", :max_stack_size => 20).save!
		GameBaseItem.create(:name => "Silk Cloth", :slot_type => "CLOTH", :max_stack_size => 20).save!

		GameBaseItem.create(:name => "Raw Ruby", :slot_type => "RAW_GEM", :max_stack_size => 20).save!
		GameBaseItem.create(:name => "Perfect Ruby", :slot_type => "GEM").save!
		GameBaseItem.create(:name => "Flawless Ruby", :slot_type => "GEM").save!
		GameBaseItem.create(:name => "Guild Key", :slot_type => "KEY_RING_SLOT", :binding => 'Bind on Pickup').save!

		GameBaseItem.create(:name => "Tailoring", :slot_type => "PROFIENCY_SLOT", :item_type => "CONTAINER", :item_sub_type => "TAILORIN_RECIPE_CONTAINER", :capacity => 1000, :accepts => 'TAILORING_RECIPE', :binding => 'Bind on Pickup').save!
		GameBaseItem.create(:name => "Tailoring Recipe: Create Linen Shirt", :slot_type => "PROFIENCY_SLOT", :item_type => 'RECIPE', :item_type => 'TAILORING_RECIPE', :binding => 'Bind on Pickup').save!
		
	end
	
	desc "Create Game Base"
	task :create_game_base => :environment do
		sh "rake gamebase:create_game_base_slots"
		sh "rake gamebase:create_game_base_items"
	end
end
#EOF namespace :gamebase

namespace :sampledata do

	desc "Destroys and Creates Chars"
	task :create_chars => :environment do
		Char.destroy_all
			
		#Char.create(:name => "Sethra", :user_id => 1, :gender => "Female").save!
		Char.create(:name => "Lavode", :user_id => 1, :gender => "Female").save!
	end
	
	desc "Create Sample Data"
	task :create_sample_data => :environment do
		sh "rake sampledata:create_users"
		sh "rake sampledata:create_chars"
	end

end
#EOF namespace :sampledata

namespace :db do

  desc "Wipe the database"
  task :wipe => :environment do
	sh "rake db:drop"
	sh "rake db:create"
	sh "rake db:migrate"

	sh "rake db:fixtures:load"

#	sh "rake gamebase:create_game_base"
#	sh "rake sampledata:create_sample_data"

  end

	



desc 'Create YAML test fixtures from data in an existing database. 
Defaults to development database.  Set RAILS_ENV to override.
set DIR to dump to a different location than test/fixtures'
task :dump => :environment do
  sql  = "SELECT * FROM %s"
  skip_tables = ["schema_migrations"]
  ActiveRecord::Base.establish_connection(RAILS_ENV)
  destination = ENV['DIR'] || 'test/fixtures'
  tables = ENV['TABLES'].split(',') if ENV['TABLES']
  tables ||= (ActiveRecord::Base.connection.tables - skip_tables)
  tables.each do |table_name|
    i = "000"
    filename = File.join RAILS_ROOT, destination, "#{table_name}.yml"
    File.open(filename, 'w') do |file|
      data = ActiveRecord::Base.connection.select_all(sql % table_name)
      file.write data.inject({}) { |hash, record|
        hash["#{table_name}_#{i.succ!}"] = record
        hash
      }.to_yaml
    end
  end
end

end # namespace
