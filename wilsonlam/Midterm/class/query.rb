# query.rb

class Query
  attr_accessor :query

  def initialize
    @query = gets.chomp
  end

  def to_s
    query
  end
end
