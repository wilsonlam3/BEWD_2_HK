class Apartment
  attr_accessor :apt_name, :sqft, :num_bedrooms, :num_bathrooms, :renter, :rent


	def initialize(apt_name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@apt_name = apt_name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
    	@apt_bathrooms = apt_bathrooms
		@renter = []
		@rent = 0
	end

	def rented?
		@renter != 0
	end

	def to_s
		"Apartment: #{@apt_name}\n Sqft: #{@apt_sqft}	Bedrooms: #{@apt_bedrooms}	Bathrooms: #{@apt_bathrooms}" 
	end

end
