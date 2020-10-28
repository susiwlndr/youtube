class PageSubscriptionsController < ApplicationController
	def index
		@subscription = current_user.subscription_musics
	end
end