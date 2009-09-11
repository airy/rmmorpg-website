class CharSlot < ActiveRecord::Base
  belongs_to :char
  belongs_to :contains, :class_name => 'Item', :dependent => :destroy

  before_create :get_code
  
  
private
	def get_code
		self.code = generate_code
	end   
	
	
end
