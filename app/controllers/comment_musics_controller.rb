class CommentMusicsController < ApplicationController
	def create
		@music = Music.find(params[:music_id])
		@comment = CommentMusic.new(resource_params)
		@comment.user = current_user
		@comment.music = @music

		if @comment.save
			redirect_to pages_path(@music)
		else
			render 'pages/show'
		end
	end

	private

	def resource_params
		params.require(:comment_music).permit(:comment)
	end
end