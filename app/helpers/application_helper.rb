# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def lookup(f, field, model, include_blank = false)
		 f.select field, model.find(:all).collect  {|p| [ p.name, p.id ] },{ :include_blank => include_blank }
	end
	
	def iconify icon
		image_tag "/images/game-icons/#{icon}" if icon
	end	
	
	
	def wuxai count, modifier = 0
		arr = count.d10.to_a
		freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		max = freq.values.max                   # we're only interested in the keys with the highest frequency
		freq.select { |k, f| f == max }         # extract the keys that have the max frequency
		num = arr.sort_by { |v| freq[v] }.last
		return ( max * 10 ) + num + modifier
	end
	
	def hit_crit_check
		1.d100.roll
	end
	
	def leveler
		3.d10 == 30
	end
	

	def action_panel
	
		if controller.controller_name != 'users' && ( resource or resources )
			ap = []
			case  controller.action_name 
				when "index" 
					ap << new_link
				when "show"
					ap << new_link
					ap << list_link
					ap << edit_link
					ap << delete_link
				when "edit"
					ap << new_link
					#ap << list _link
					ap << show_link
				when "new"
					ap << list_link
			end
		end
	end


	def edit_link
	  link_to "Edit", edit_resource_path  
	end

	def show_link
	  link_to "Show", resource_path  
	end

	def new_link
	  link_to "New", new_resource_path
	end

	def delete_link
    link_to 'Destroy', resource, :confirm => 'Are you sure?', :method => :delete 
	end

	def list_link
	  link_to "List", resources_path  
	end
	
end
