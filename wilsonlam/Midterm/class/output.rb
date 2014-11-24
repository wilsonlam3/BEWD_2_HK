# output.rb

#require_relative 'query.rb'
require_relative 'retrieve.rb'

class Output

  attr_accessor :retrieve_data , :output_data

  def initialize
  	@retrieve_data = Retrieve.new
  end

  def generate_result
    output_data = retrieve_data.generate_retrieve
    if output_data == nil
      puts "Sorry, your query cannot be found."
    else
    #  If I wanted to use the each_pair	method, it doesn't work due to the class was in array
  	#  	output_data.each_pair {|key, value| puts "#{key} : #{value}" }
      puts output_data
      puts
 	end
  end
end