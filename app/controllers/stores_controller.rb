class StoresController < ApplicationController

	def index
		if params[:designer_id]
			designer = Designer.find(params[:designer_id])
			@stores = designer.stores
	  else
			@stores = Store.all
		end
	end

	def show
		@store = Store.find(params[:id])
	end

	def create
	end
end
