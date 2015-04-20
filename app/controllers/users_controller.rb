class UsersController < ApplicationController



	def index
		@users = User.all
		@team = User.my_team(current_user)
	end

end
