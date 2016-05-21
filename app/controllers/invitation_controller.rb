class InvitationController < ApplicationController

	def new
		@invitation = Invitation.new
	end
	
	def create
	  @invitation = Invitation.new(params[:invitation])
	  @invitation.sender = current_user
	  @invitation.accepted = false
	  if @invitation.save
			flash[:notice] = "Thank you, invitation created."
			redirect_to root_url
	  else
	    flash[:notice] = "something is wrong :/"
	    redirect_to root_url
	  end
	end
end
