class DesignersController < ApplicationController
	include Yelp::V2::Business::Request

	def index
		@designers = Designer.all
	end

	def show
		@designer = Designer.find(params[:id])
	end

	def create
		@designer = Designer.find(params[:id])
	end
	# def search_form
	# 	# render # form to enter a designer
	# 	# search_form.html.erb
	# end

	# def search
	# 	@designers = Designer.find_by_name(params[:name])
	# end
end
