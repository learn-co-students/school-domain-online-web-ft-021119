Require 'pry'
# # School class is the model in the domain object model context
#   # binding.pry
# 
# #add_student
#   is able to add a student
#   is able to add multiple students to a class (grade)
#   is able to add students to different grades
# #grade
#   is able to retreive students from a grade
# #sort
#   is able to sort the students
class School
 attr_accessor :name, :roster #, :add_student

 #  def initialize(school_name)
 #    @school_name = name
 #    @roster = {}
 # end
 def initialize(school_name)
     @school_name = school_name
     @roster = {}
   end

   # def roster
   #   @roster
   # end

   def add_student(student, grade)
      if roster.key?(grade)
        roster[grade] << student
      elsif
        roster[grade] = []
        roster[grade] << student
      end
    end

    def grade(grade)
      roster[grade]
    end

    def sort
      roster.each_value(&:sort!)
    end
end


#
# def add_student(name, grade)
#     @student_name = name
#     @grade = grade
#     if @roster.include?(grade) == false
#       @roster[grade] = []
#     end
#     @roster[grade] << name
#   end
