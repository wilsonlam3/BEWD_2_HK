require 'json'
require 'rest-client'


raw_data = RestClient.get ('http://mashable.com/stories.json')

mas_hash= JSON.load(raw_data)

mas_hash["new"].each do |element|
 	print element["author"] + ":  " + element["title"]
	


end

