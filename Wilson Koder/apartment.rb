#Explaining classes, objects, attr_accessor & load paths.
#TIME: 30 min

class Apartment
  attr_accessor :sqft, :num_bedroom, :flat_num, :floor

  def initialize(name, sqft, num_bedroom, floor, tenants)
    @name = name
    @sqft = sqft
    @num_bedroom = num_bedroom
    @floor = floor
    @tenants = []
  end

  def occupied?
    !@tenants.empty?
  end

  def to_s
    @name
  end
end
