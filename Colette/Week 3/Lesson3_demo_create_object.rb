#Code Demo Creating Objects.
#Why use Objects?
# => Follow allowing with the instructor, comment out code and run the file to test your assumptions.
#TIME: 45 min

# These are 3 hashes that have the same fields and share a similar behavior
jimmy = {}
jimmy[:name] = "Jimmy"
jimmy[:major] = "Math"
jimmy[:course] = "Math"
jimmy[:grade]= "A"
#
pepe = {}
pepe[:name]= "Pepe"
pepe[:major] = "Music"
pepe[:course] = "Math"
pepe[:grade] = "C"
#
edward = {}
edward[:name] = "Edward"
edward[:major] = "Math"
edward[:course] = "Math"
edward[:grade] = "D"
#
def grade_status(student)
  if student[:grade] == "F"
    "failed"
  elsif ["D", "E"].include?(student[:grade]) && student[:major] == student[:course]
    # if this course is their major, they need a C or higher to pass
    "failed"
  else
    "passed"
  end
end

puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"

#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################

# # How about using a class
# class Student
#   attr_accessor :name, :major, :course, :grade
# end

# def grade_status(student)
#  if student.grade == "F"
#    "failed"
#  elsif student.major == student.course && student.grade >= "C"
#    "failed"
#  else
#    "passed"
#  end
# end

# jimmy = Student.new
# jimmy.name = "Jimmy"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "A"

# pepe = Student.new
# pepe.name = "Pepe"
# pepe.major = "Music"
# pepe.course = "Math"
# pepe.grade = "C"

# edward = Student.new
# edward.name = "Edward"
# edward.major = "Math"
# edward.course = "Math"
# edward.grade = "C"

# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"
# puts "#{pepe.name} has #{grade_status(pepe)} #{pepe.course}"
# puts "#{edward.name} has #{grade_status(edward)} #{edward.course}"

#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################

# How about adding the grade_status method to our class?
# class Student
#   attr_accessor :name, :major, :course, :grade

#   def grade_status
#     if @grade == "F"
#       "failed"
#     elsif ["D", "E"].include?(@grade) && @major == @course
#       "failed"
#     else
#       "passed"
#     end
#   end
# end

# jimmy = Student.new
# jimmy.name = "Jimmy"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "A"

# pepe = Student.new
# pepe.name = "Pepe"
# pepe.major = "Music"
# pepe.course = "Math"
# pepe.grade = "C"

# edward = Student.new
# edward.name = "Edward"
# edward.major = "Math"
# edward.course = "Math"
# edward.grade = "D"

# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
# puts "#{pepe.name} has #{pepe.grade_status} #{pepe.course}"
# puts "#{edward.name} has #{edward.grade_status} #{edward.course}"

#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################

# One more thing though... We can make this program more efficient with less code.
# Add the initialize methods along with to_s so that the code below runs correctly.

# class Student
#   attr_accessor :name, :major, :course, :grade

#   def grade_status
#     if @grade == "F"
#       "failed"
#     elsif ["D", "E"].include?(@grade) && @major == @course
#       "failed"
#     else
#       "passed"
#     end
#   end

# end

# jimmy = Student.new("Jimmy", "Math", "Math", "A")
# pepe = Student.new("Pepe", "Music", "Math", "C")
# edward = Student.new("Edward", "Math", "Math", "C")

# puts jimmy
# puts pepe
# puts edward