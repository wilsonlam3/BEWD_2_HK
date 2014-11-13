class Person
	attr_accessor :name, :role, :department
	def initialize(name,role,deparment)
		@name=name
		@role=role
		@department=deparment
	end
end

class Office
	attr_accessor :location, :person
	def initialize (location)
		@location=location
		@person = []
	end
end

RVL=Office.new("ICC")
RVL.person[0]=Person.new("chris","accountant","finance")
RVL.person[1]=Person.new("vic","mgr","finance")

print