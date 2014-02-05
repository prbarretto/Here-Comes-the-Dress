class DesignerSearchesController < ApplicationController

	def new
		@designer = Designer.new
	end

	def create
		designer = Designer.find(params[:id])
		@stores = designer.stores
		render :show
	end
end
