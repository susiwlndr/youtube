class Music < ApplicationRecord
	belongs_to :channel
	belongs_to :user

	has_many :likes, dependent: :destroy
	has_many :subscription_musics, dependent: :destroy

	has_many :comment_musics
	has_many :playlists, dependent: :destroy
end
