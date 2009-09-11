class ItemsController < ApplicationController
  before_filter :require_user, :except => [:show, :index]

	resources_controller_for :items
end
