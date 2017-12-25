class InvitesController < ApplicationController
  def create
    @invite = Invite.new(invite_params)
    @invite.sender = current_user
    if @invite.save
      @notification = Notification.new(
        title: "You are invited for a new session by #{current_user.name}",
        body: "Do you want accept the invite?",
        user_id: invite_params[:recipient_id]
      ).save
    end
  end
  
  private

  def invite_params
    params.require(:invite).permit(:recipient_id, :session_vote_id)
  end
end
