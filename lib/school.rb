# code here!
require 'pry'
class School
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @hash = {}
  end
  
  def roster
    @hash
  end
  
  def add_student(name, grade)
    #binding.pry
    counter = 0
    #@hash.each {|k, v| counter += 1 if k == grade}
    @hash[grade] = [] if @hash.key?(grade) == false
    #@hash[grade] = [] if counter == 0
    @hash[grade] << name
  end
  
  def grade(grade)
    @hash[grade]
  end
  
  def sort
    @hash.each {|k, v| @hash[k] = v.sort}
    @hash.sort_by {|k, v| k}.to_h
  end
end