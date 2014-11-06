require ('rest-client')
require 'json'

print ("enter the id that you want to know in details: ")
#id=gets.chomp
stringdetail = RestClient.get 'http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/7686925' 
stringdetail= stringdetail[14...-2]
stringdetail= stringdetail.delete! "\\n"
stringdetail= stringdetail.delete! "\\"
hashdetail = JSON.parse(stringdetail)

puts stringdetail
#puts hashdetail
#puts hashdetail.class

#hashdetail.each do |tag|
#	print tag["id"].to_i 
#	puts tag["subject_en"]  

#end
