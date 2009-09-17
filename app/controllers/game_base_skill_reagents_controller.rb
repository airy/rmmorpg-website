class GameBaseSkillReagentsController < ApplicationController
  before_filter :require_user, :except => [:show, :index]

  
	resources_controller_for :game_base_skill_reagents
end  