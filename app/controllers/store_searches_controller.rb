class StoreSearchesController < ApplicationController

	def new
		@store = Store.new
	end

	def create
		store = Store.find(params[:id])
		@designers = store.designers
		render :show
	end
end
