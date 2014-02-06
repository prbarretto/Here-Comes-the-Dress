class StoreSearchesController < ApplicationController
	include Yelp::V2::Search::Request

	def new
		@store = Store.new
	end

	def create
		@store = Store.find(params[:id])
		@designers = @store.designers
		render :show
	end

end
