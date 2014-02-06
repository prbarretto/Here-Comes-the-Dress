# class DesignersController < ApplicationController
# 	include Yelp::V2::Business::Request

# 	def index
# 		@designer = Designer.new
# 		@designers = Designer.all
# 	end

# 	def show
# 		@designer = Designer.find(params[:designer_id])
# 		@stores = @designer.stores
# 	end

# 	def self.search_yelp(yelp_id)
# 		client = Yelp::Client.new
# 		request = Id.new(:yelp_business_id => yelp_id)
#  		response = client.search(request)
# 	end
# end
	# def search_form
	# 	# render # form to enter a designer
	# 	# search_form.html.erb
	# end

	# def search
	# 	@designers = Designer.find_by_name(params[:name])
	# end
