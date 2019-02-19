# # School class is the model in the domain object model context
#   # binding.pry
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
