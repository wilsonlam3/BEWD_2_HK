# output.rb

require_relative 'output.rb'
require_relative 'query.rb'
require_relative 'retrieve.rb'

class Output

  attr_accessor :format_data , :countryId

  def initialize(format_data)
    @format_data = format_data
  end

  def generate_result
    0.upto(format_data.length - 1) do |n|
  	  	format_data[n].each_pair {|key, value| puts "#{key} : #{value}" }
    puts
    end

  end


  def test
    # How I retrieve each item's value countryId , countryName etc. I tried but can't succeed :(
#/Users/wilsonlam/bewd/BEWD_2_HK/wilsonlam/Midterm/class/output.rb:32:in `generate_result': undefined method for #<Array:0x007fc3b904c818> (NoMethodError)

#{"countryId"=>"1819730", "adminCode1"=>"00", "countryName"=>"Hong Kong", "fclName"=>"mountain,hill,rock,... ", "countryCode"=>"HK",
# "lng"=>"113.8473", "fcodeName"=>"peninsula", "toponymName"=>"Fan Lau", "fcl"=>"T", "name"=>"Fan Lau", "fcode"=>"PEN",
# "geonameId"=>1819882, "lat"=>"22.19836", "adminName1"=>"", "population"=>0}

      puts "#{format_data["countryId"]}"
      puts "#{format_data["adminCode1"]}"
      puts "#{format_data["countryName"]}"
      puts "#{format_data["fclName"]}"
      puts "#{format_data["countryCode"]}"
      puts "#{format_data["lng"]}"
      puts "#{format_data["fcodeName"]}"
      puts "#{format_data["toponymName"]}"
      puts "#{format_data["fcl"]}"
      puts "#{format_data["name"]}"
      puts "#{format_data["fcode"]}"
      puts "#{format_data["geonameId"]}"
      puts "#{format_data["lat"]}"
      puts "#{format_data["adminName1"]}"
      puts "#{format_data["population"]}"
    end
end