class Apartment
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :rent, :renter

	def initialize(name, apt_sqft,apt_bedrooms,apt_bathrooms)
		@name= name
		@apt_sqft=apt_sqft
		@apt_bedrooms=apt_bedrooms
		@apt_bathrooms=apt_bathrooms
	end

	def to_s
		"Apartment: #{@name} \n sqft: #{@apt_sqft}       Bedroom: #{@apt_bedrooms}        Bathroom: #{@apt_bathrooms}"	
	end
	def empty
	  "yes" if @renter.nil?	
	end


end
