class FriendshipController < ApplicationController
  def create
    @asker = current_user
    @asked = User.find(params[:user_id])
    @friendship = Friendship.new(asker: @asker, asked: @asked)
    if @friendship.save
      redirect_to root_path, notice: "Friend request sent"
    else
      redirect_to root_path, alert: "Friend request failed"
    end
  end
end
