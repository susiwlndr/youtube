class PageController < ApplicationController
  def index
  	@channels = Channel.all
  end
end