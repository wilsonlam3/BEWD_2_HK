class Building
	attr_accessor :name, :address, :apartments

	def initialize(name,address)
		@name=name
		@address=address
		@apartments=[]
	end


	def view_apartments
		puts "-------#{@name} Apartment List-------"	
		apartments.each do |index| 
		   
		   puts "#{index}"
		   if index.renter.nil? then puts "the apartment is empty" end
		   puts 
		end


	end
end
