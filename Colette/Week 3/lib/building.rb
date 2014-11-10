#Building Class
class Building

	attr_accessor :building_name, :building_address, :apartments
	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "-----------#{@building_name} Apartment List-----------"
		puts "Address: #{@building_address} \n Number of Units: #{@apartments.length}"
		@apartments.each do |unit|
			puts unit
			if unit.occupied? == false
				puts "This apartment is available."
			else
				puts unit.renter
			end
		end
	end

end
