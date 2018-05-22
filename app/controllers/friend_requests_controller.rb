class FriendRequestsController < ApplicationController
	# def create
 #    requestee = User.find(params[:friend_id].to_i)
 #    @friend_request = FriendRequest.new(sender_id: current_user.id, requested_id: requestee.id)
 #    if @friend_request.save
 #      ActionCable.server.broadcast "notifications_channel_#{requestee.id}",
 #                                    content: current_user.username
 #  end
end
