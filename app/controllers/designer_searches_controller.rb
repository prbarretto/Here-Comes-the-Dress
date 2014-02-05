class DesignerSearchesController < ApplicationController
	include Yelp::V2::Search::Request

	def new
		@designer = Designer.new
	end

	def create
		designer = Designer.find(params[:id])
		@stores = designer.stores
		@stores.each do |store|
			client = Yelp::Client.new
			request = Yelp::V2::Business::Request::Id.new(:yelp_business_id => store.yelp_id)
			@response = client.search(request)
		end
		render :show
	end


end
