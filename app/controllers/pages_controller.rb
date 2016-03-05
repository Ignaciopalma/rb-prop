class PagesController < ApplicationController
	def user_properties
		@user_properties = current_user.properties
	end
end
