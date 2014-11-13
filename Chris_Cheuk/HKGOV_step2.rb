require ('rest-client')
require 'json'


string = RestClient.get 'http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?lang=en'
string = string[12...-2]

hash= Hash.new
hash = JSON.parse(string)


#puts hash
#puts hash.class

hash["notifications"].each do |array|
	print "#{array["id"]}  :" 
	puts array["subject"]  

end

print "enter the id that you want to know in details: "
id=gets.chomp
stringdetail = RestClient.get 'http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/'+id 
stringdetail= stringdetail[14...-2]
#stringdetail= stringdetail.delete! "\\n"
#stringdetail= stringdetail.delete! "\\"
hashdetail = JSON.parse(stringdetail)

#puts stringdetail
#puts hashdetail
#puts hashdetail.class

#print "#{hashdetail["id"]}: "
#puts hashdetail["subject_en"] 


msgdetail=JSON.parse(hashdetail["msg_en"])
msgdetail["body"].each {|array| puts array["val"]}
