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
end
