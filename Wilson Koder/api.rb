require 'open-uri'
require 'json'

def get_input()
    gets
end

puts 'Please input notification ID'
id = get_input()

content = open("http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/#{id}").read

puts 'API Response: '
puts content
