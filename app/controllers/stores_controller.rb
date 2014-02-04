class StoresController < ApplicationController
	include Yelp::V2::Business::Request

	def index
		@stores = Store.all
	end

	def show
		@store = Store.all
	end
end
