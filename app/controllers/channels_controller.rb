class ChannelsController < ApplicationController
	def index
		@channels = Channel.all
	end

	def new
		@channel = Channel.new
	end

	def create
		@channel = Channel.new(channel_params)
		@channel.user = User.first

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