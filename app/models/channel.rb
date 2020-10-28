class Channel < ApplicationRecord
	belongs_to :user
	has_many :musics
	has_many :subscriptions
end
