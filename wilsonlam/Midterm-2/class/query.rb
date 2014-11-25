# query.rb

class Query
  attr_accessor :query

  def initialize
    @query = gets.chomp
 #   @query.encode('utf-8')		# Ensure the user's input is converted to utf-8 format
  end

  def to_s
    query
  end
end
