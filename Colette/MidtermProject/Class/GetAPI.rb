#Open Movie Database - API
#Colette Leung
#Get API

$:.unshift (File.dirname(__FILE__))
require 'Class/GetInput.rb'
require 'rubygems'
require 'rest_client'
require 'json'

class GetAPI

	attr_accessor :summary, :input, :url

	def initialize
		@input = GetInput.new
		@url = input.to_s
	end

	def urltojson
		summary = RestClient.get(url)
		summary = JSON.load(summary)
	end

end
