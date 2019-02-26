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
    @roster.sort {|a,b| a[1]<=>b[1]}
    new_hash = {}
    @roster.each do |grade, students|
      new_hash[grade] = students.sort
    end
    #  binding.pry
    new_hash
  end
end
