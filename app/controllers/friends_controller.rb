class FriendsController < ApplicationController
	# before_action :authenticate_user
	
  def index
    @friends = []
    User.find(4).friendships.each do |friendship|
      @friends << friendship.friend 
    end
    render json: @friends
  end

  def show
    id = params[:id].to_i
    if id
      render json: User.find(id)
    end
  end

  def destroy
  end
end
