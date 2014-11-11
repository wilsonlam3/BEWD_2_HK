require 'rest-client'
require 'json'
string = RestClient.get 'http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?lang=en'
string = string[12...-2]

#hash= Hash.new
hash = JSON.parse(string)


#puts hash
#puts hash.class

hash["notifications"].each do |feed|
	print "#{feed["id"]}  :" 
	puts feed["subject"]  

end
