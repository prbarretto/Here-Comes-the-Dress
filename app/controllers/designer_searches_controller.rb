class DesignerSearchesController < ApplicationController
	include Yelp::V2::Search::Request

	def new
		@designer = Designer.new
	end

	def create
		designer = Designer.find(params[:id])
		@stores = designer.stores
		@stores_yelp = []

		client = Yelp::Client.new
		@stores.each do |store|
			request = Yelp::V2::Business::Request::Id.new(:yelp_business_id => store.yelp_id)
			response = client.search(request)
			@stores_yelp << response
		end
		render :show
	end


end
