require 'pry'

class School

  def initialize(name=nil)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster, :grade
  attr_accessor :student

  def add_student(name, grade)
    @student = name
    @grade = grade
    if !roster.include?(grade)
      @roster[grade] = []
    end

    @roster[grade]<< student
    @roster[grade].sort
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade]=name.sort
    end
    @roster.sort.to_h
  end
  #binding.pry
end
