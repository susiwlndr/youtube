class SubscriptionMusic < ApplicationRecord
	belongs_to :music
	belongs_to :user

	def self.already_subscription_music?(current_user, params)
  	SubscriptionMusic.where(user_id: current_user, music_id:params[:music_id]).exists?
  end
end
