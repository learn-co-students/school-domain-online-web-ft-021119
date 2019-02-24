require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||=  []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort
    # @roster.sort {|a,b| a[1]<=>b[1]}
    # @roster.each do |grade, students|
    #   grade && students.sort
    # end
     binding.pry
  end
end
