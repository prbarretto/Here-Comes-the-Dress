class DesignersController < ApplicationController
	include Yelp::V2::Business::Request

	def index
		@designers = Designer.all
	end

	def show
		@designer = Designer.find(params[:id])
	end
end
