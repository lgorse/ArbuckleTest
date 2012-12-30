class PagesController < ApplicationController

	require "open-uri"
require "json"
require 'mechanize'

	def home
	end

	def to_login
		url = "https://www.stanford.edu/group/arbucklecafe/cgi-bin/ArbuckleCafe/webauthRails.php"
		#url = "http://www.stanford.edu/group/arbucklecafe/cgi-bin/ArbuckleCafeTimeStampPrint.php"
		#@user = open(url).read
		redirect_to(url)
	end

	def user_parse
		cookies.permanent[:user_name] = params[:name]
		cookies.permanent[:user_login] = params[:login]	
		redirect_to '/pages/show'	
	end

	def show
		@user = cookies[:user_name]
		@login = cookies[:user_login]
	end


end
