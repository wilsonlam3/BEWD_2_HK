class Building
	attr_accessor :name, :address, :apartments

	def initialize(name,address)
		@name=name
		@address=address
		@apartments=[]
	end


	def view_apartments
		apartments.each do |index| 
		   puts "-------#{@name} Apartment List-------"	
		   puts "#{index}"

		end


	end
end
