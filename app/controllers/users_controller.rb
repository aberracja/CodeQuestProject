class UsersController < ApplicationController

	def index
		@team = User.my_team(current_user)
		@invitation = Invitation.new
	end

end
