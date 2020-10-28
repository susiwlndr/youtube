class Playlist < ApplicationRecord
	belongs_to :user
	belongs_to :music

	def self.already_play?(current_user, params)
  	Playlist.where(user_id: current_user, music_id:params[:music_id]).exists?
  end
end
