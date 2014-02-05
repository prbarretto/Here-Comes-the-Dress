class Store < ActiveRecord::Base
	has_and_belongs_to_many :designers
	include Yelp::V2::Business::Request


end
