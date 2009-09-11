class CharsController < ApplicationController
  before_filter :require_user, :except => [:show, :index]
  resources_controller_for :chars
  #user relation must to be set at :create
end
