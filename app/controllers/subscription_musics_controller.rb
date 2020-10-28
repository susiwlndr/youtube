class SubscriptionMusicsController < ApplicationController
	before_action :find_music
  
  def create
  	if SubscriptionMusic.already_subscription_music?(current_user,params)
  		flash[:notice] = "Subscribe"
  	else
    	@music.subscription_musics.create(user_id: current_user.id)
 		end
    redirect_to pages_path
  end

  def destroy
  	@music.subscription_musics.find(params[:id]).destroy
  	redirect_to pages_path
	end

  private
  def find_music
    @music = Music.find(params[:music_id])
  end
end