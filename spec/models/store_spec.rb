require 'spec_helper'

describe Store do
	describe "associations" do
		it { should have_and_belong_to_many :designers }
	end
end
