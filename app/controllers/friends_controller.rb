class FriendsController < ApplicationController
	before_action :authenticate_user
	
  def index
  	id = params[:id].to_i
  	if id
  		render json: User.find(id)
  	end
  end

  def destroy
  end
end
