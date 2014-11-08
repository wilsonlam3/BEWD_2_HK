#Explaining classes, objects, attr_accessor & load paths.
#TIME: 30 min

class Apartment
  attr_accessor :name, :sqft, :num_bedrooms, :floor, :tenants, :num_bathrooms, :total_rooms

  def initialize(name, sqft, num_bedrooms, floor, num_bathrooms)
    @name = name
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @floor = floor
    @num_bathrooms = num_bathrooms
    @total_rooms = @num_bathrooms + @num_bedrooms
    @tenants = []
  end

  def occupied?
    !@tenants.empty?
  end

  def to_s
    @name
  end
end
