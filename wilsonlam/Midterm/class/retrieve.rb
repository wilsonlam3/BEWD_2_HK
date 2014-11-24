# retrieve.rb

require 'rubygems'
require 'rest-client'
require 'json'

#require_relative 'output.rb'
require_relative 'query.rb'


class Retrieve

  attr_accessor :query , :data_hash

  def initialize
    @query = Query.new
    @query = query.to_s

  end

  def generate_retrieve

# If I wanted to show only countryName = HongKong from the list of countryInfo, it doesn't work
#api_data = RestClient.get('http://api.geonames.org/countryInfoJSON?countryName='+"#{query}".gsub(/\s+/,"")+'&username=demo')

    api_data = RestClient.get('http://api.geonames.org/searchJSON?q='+"#{query}".gsub(/\s+/,"")+'&maxRows=5&username=demo')
    data_hash = JSON.parse(api_data)
    data_hash['totalResultsCount']
    data_hash['geonames']
#    puts data_hash
  end

end