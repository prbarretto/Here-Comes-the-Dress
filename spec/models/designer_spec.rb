require 'spec_helper'

describe Designer do
	describe "associations" do
		it { should have_and_belong_to_many :stores }
	end
end
