class Reputation < ActiveRecord::Base
  belongs_to :char
  belongs_to :game_base_faction
end
