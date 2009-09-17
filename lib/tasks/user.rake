require 'rubygems'
require 'activerecord'

require 'lib/ar_code_generate.rb'


namespace :sampledata do

	desc "Create Users "
	task :create_users => :environment do
		User.destroy_all
		User.create(:login => "airy", :password => "master", :password_confirmation => "master", :email => "airydragon@gmail.com").save!
	end 
end