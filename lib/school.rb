require 'pry'

class School
  attr_accessor :school, :roster

  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade]? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(num)
    @roster[num]
  end
  
  def self.roster
  end
end
