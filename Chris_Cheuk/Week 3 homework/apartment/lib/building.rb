class Building
	attr_accessor :name, :address, :apartments
	def initialize(name,address)
		@name=name
		@address=address
		@apartments=[]
	end
	def view_apartments
		puts "-------#{@name} Apartment List-------"	
		apartments.each do |apt| 
   		   puts "#{apt}"
		   if apt.empty then puts "the apartment is available" end
		   puts 
		end


	end
end
