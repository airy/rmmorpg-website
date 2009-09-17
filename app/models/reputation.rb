class Reputation < ActiveRecord::Base
	#automatic code generation
	include Coded

  belongs_to :char
  belongs_to :game_base_faction
end
