class FriendsController < ApplicationController
  def index
  	id = params[:id].to_i
  	if id
  		render json: User.find(id)
  	end
  end

  def destroy
  end
end
