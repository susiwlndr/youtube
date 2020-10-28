class PagesController < ApplicationController
	before_action :authenticate_user!
  def index
  	@musics = Music.all
  	@channels = current_user.channel
  end

  def show
  	@music = Music.find(params[:id])
  	@comment = CommentMusic.new
  	@comments = @music.comment_musics
  end
end