class MusicsController < ApplicationController
	def new
		@music = Music.new
	end

	def create
		@channel = Channel.find(params[:channel_id])
		@music = Music.new(music_params)

		@music.user = current_user

		if @music.save
			redirect_to channels_path
		else
			render 'new'
		end
	end

	private

	def music_params
		params.require(:music).permit(:title, :description)
	end
end