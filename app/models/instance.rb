class Instance < ActiveRecord::Base
	#automatic code generation
	include Coded


  belongs_to :owner, :polymorphic => true
end
