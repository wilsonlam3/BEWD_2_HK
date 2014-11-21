#Open Movie Database - API
#Colette Leung
#Get API

require 'rubygems'
require 'rest_client'
require 'json'

class GetAPI

	attr_accessor :summary, :url

	def initialize(user_input)
			@url = user_input.to_s
	end

	def urltojson
		summary = RestClient.get(url)
		summary = JSON.load(summary)
	end

end
