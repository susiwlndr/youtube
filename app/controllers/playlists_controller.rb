class PlaylistsController < ApplicationController
  before_action :find_play
  
  def create
    if Playlist.already_play?(current_user,params)
      flash[:notice] = "Add"
    else
      @music.playlists.create(user_id: current_user.id)
    end
    redirect_to pages_path
  end

  def destroy
    @music.playlists.find(params[:id]).destroy
    redirect_to pages_path
  end

  private
  def find_play
    @music = Music.find(params[:music_id])
  end
end