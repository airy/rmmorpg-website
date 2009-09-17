# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def lookup(f, field, model, include_blank = false)
		 f.select field, model.find(:all).collect  {|p| [ p.name, p.id ] },{ :include_blank => include_blank }
	end
end
