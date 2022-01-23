class StaticController < ApplicationController
	before_action :require_token, only: [:feed]
	def index
		@users = User.all
	end

	def feed

  	end
end