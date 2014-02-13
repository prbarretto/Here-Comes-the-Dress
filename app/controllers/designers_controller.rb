class DesignersController < ApplicationController
  include Yelp::V2::Search::Request

  def index
    @designer = Designer.new
    @designers = Designer.all
    render :new
  end

  def new
    @designer = Designer.new
  end

  def create
    designer = Designer.find(params[:id])
    # I want:
    # @stores_yelp = designer.yelp_results

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
