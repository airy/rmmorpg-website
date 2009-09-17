class GameBaseFaction < ActiveRecord::Base
	#automatic code generation
	include Coded

	validates_uniqueness_of :name
	
	
end