class Like < ApplicationRecord
	belongs_to :music
	belongs_to :user

	def self.already_liked?(current_user, params)
  	Like.where(user_id: current_user, music_id:params[:music_id]).exists?
  end
end
