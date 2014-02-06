class StoresController < ApplicationController
	include Yelp::V2::Search::Request
	def index
 		if params[:designer_id]
 			designer = Designer.find(params[:designer_id])
 			@stores = designer.stores
 		else
 			@stores = Store.all
 		end
 		render :new
 	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.find(params[:id])
		@designers = @store.designers
		render :show
	end

end
