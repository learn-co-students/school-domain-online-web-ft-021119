class School 
  attr_reader :roster
  
  def initialize(school_name)
    @school_name = school_name
    
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name 
  end
  
  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.each_value do |student_list|
      student_list.sort! 
    end 
  end 
end 

