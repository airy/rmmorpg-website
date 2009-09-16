class GameBaseFaction < ActiveRecord::Base

	validates_uniqueness_of :name
	
	before_create :get_code
	
	
private
	def get_code
		self.code = generate_code
	end   
	
end