require 'spec_helper'

describe PagesController do

	describe "GET 'home'" do
		it "returns http success" do
			get 'home'
			response.should be_success
		end

		describe "GET 'user_parse" do
			it "returns http success" do
				get 'home'
				response.should be_success
			end
		end
	end

end
