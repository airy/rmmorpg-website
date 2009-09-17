module DiceHelper
	def wuxai count, modifier = 0
		arr = count.d10.to_a
		freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		max = freq.values.max                   # we're only interested in the keys with the highest frequency
		freq.select { |k, f| f == max }         # extract the keys that have the max frequency
		num = arr.sort_by { |v| freq[v] }.last
		return ( max * 10 ) + num + modifier
	end	
end
