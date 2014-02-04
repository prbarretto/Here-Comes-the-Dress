class StoresController < ApplicationController
	include Yelp::V2::Business::Request

	def index
		@stores = Store.all
	end

	def show
		@stores = Store.all
	end
end
