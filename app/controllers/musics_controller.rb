class MusicsController < ApplicationController
	def create
		@channel = Channel.find(params[:channel_id])
		@music = Music.new(music_params)
		@music.user = current_user
		@music.channel = @channel

		if @music.save
			redirect_to channels_path
		else
			render 'channels/show'
		end
	end

	private

	def music_params
		params.require(:music).permit(:title, :description)
	end
end