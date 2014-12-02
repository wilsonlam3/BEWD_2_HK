# retrieve.rb

require 'rubygems'
require 'rest-client'
require 'json'

#require_relative 'output.rb'
require_relative 'query.rb'


class Retrieve

  attr_accessor :query , :output_data 

  def initialize(query)
     @query = query
  end

  def generate_retrieve

#api_data = RestClient.get('http://api.geonames.org/countryInfoJSON?countryName='+"#{query}".gsub(/\s+/,"")+'&username=demo')

    api_url = RestClient.get('http://api.geonames.org/searchJSON?q='+"#{query}".gsub(/\s+/,"")+'&maxRows=5&username=wilsonlam')
    api_hash = JSON.parse(api_url)
    output_data = api_hash['geonames']
  end

end