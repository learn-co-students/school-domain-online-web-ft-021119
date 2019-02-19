 require 'pry'
class School
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  #def roster=(roster)
   # @roster = roster
  #end 
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    @student = student
    @grade = grade
      if roster[grade] ||= []
        roster[grade] << student
      end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
   @roster.each do |grade, student| 
     student.sort!
   end
  end
 # binding.pry
end
