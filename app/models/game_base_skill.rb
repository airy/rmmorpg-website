class GameBaseSkill < ActiveRecord::Base
  before_create :get_code

private
	def get_code
		self.code = generate_code
	end   
end
