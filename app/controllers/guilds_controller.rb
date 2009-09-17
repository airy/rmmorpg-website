class GuildsController < ApplicationController
  before_filter :require_user, :except => [:show, :index]

	resources_controller_for :guild
end
