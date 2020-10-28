class LikesController < ApplicationController
  before_action :find_likes
  
  def create
    if Like.already_liked?(current_user,params)
      flash[:notice] = "Subscribe"
    else
      @music.likes.create(user_id: current_user.id)
    end
    redirect_to pages_path
  end

  def destroy
    @music.likes.find(params[:id]).destroy
    redirect_to pages_path
  end

  private
  def find_likes
    @music = Music.find(params[:music_id])
  end
end