class Building
	attr_accessor :building_name, :building_address, :apartments


	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "-----------#{@building_name} Apartment List-----------"

		@apartments.each do |unit|
			puts unit
			if unit.rented? == false
				puts "This apartment is vacant."
			else
				puts unit.renter
			end
		end
	end

end