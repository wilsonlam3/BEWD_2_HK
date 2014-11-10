#Lesson4_API Part 2 - GovHKNotivication - Colette

require 'rubygems'
require 'rest_client'
require 'json'

#Get summary of notifications

url_n = 'http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?lang=en&max=2'
summary = RestClient.get(url_n)
summary = JSON.parse(summary[29..-4]) #is load and parse the same thing?

#Get details of notifications

url_d = 'http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/'
detail = []
summary.map do |noti|
	temp = RestClient.get("#{url_d}#{noti['id']}")
	detail << JSON.load(temp[14..-3])
end

#Display summary and details

detail.map do |noti|
	noti['msg_en'] = JSON.load(noti["msg_en"])
	puts "ID: #{noti['id']}, Source: #{noti['source_id']}\nEffective: #{Time.at(noti['schedule_ts']/1000)}, Expiry: #{Time.at(noti['exp_ts']/1000)}\nSubject: #{noti['subject_en']}\nDetail: #{noti['msg_en']['body'][0]['val']}\n "
end


=begin

Had to parse again.

EPD Environmental Protection Department
FEH Food and Environmental Hygiene Department
GWF/MYG Office of the Government Chief Information Officer
HKC Hong Kong Computer Emergency Response Team Coordination Center
HKO Hong Kong Observatory
HPO Hongkong Post
IMM Immigration Department
IRD Inland Revenue Department
LCS Leisure and Cultural Services Department
RVD Rating and Valuation Department
SB Security Bureau
SFA The Student Financial Assistance Agency
TD Transport Department


=end