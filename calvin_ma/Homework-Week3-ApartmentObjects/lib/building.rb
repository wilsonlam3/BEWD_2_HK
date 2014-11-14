#Building Class
class Building

attr_accessor :building_name, :building_address, :apartments

	def initialize (building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		@apartments.each do |apartment|
			puts "Apartment: #{apartment.name}"
			puts "Sqft: #{apartment.apt_sqft}"
			puts "Bedrooms: #{apartment.apt_bedrooms}"
			puts "Bathrooms: #{apartment.apt_bathrooms}"
		end
	end

end