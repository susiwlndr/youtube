class ChannelsController < ApplicationController
	before_action :authenticate_user!
	def index
		@channels = Channel.all
		@musics = current_user.musics
	end

	def new
		@channel = Channel.new
	end

	def create
		@channel = Channel.new(channel_params)
		@channel.user = current_user

		if @channel.save
			redirect_to channels_path
		else
			render 'new'
		end
	end

	private

	def channel_params
		params.require(:channel).permit(:deskripsi)
	end
end