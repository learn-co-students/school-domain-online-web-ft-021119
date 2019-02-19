require 'pry'

class School

attr_accessor :name, :roster
#attr_reader :roster

#@@object = "school"

def initialize(name, roster = {})
	#binding.pry
	@name = name
	#@roster = roster
	@roster = Hash.new{|grades,names| grades[names] = []}
	end


#binding.pry
def add_student(names,grades)


	roster[grades]  << names
  


#binding.pry
end
def grade(grade)
roster[grade]
#roster[grade]
end
def sort
	new_hash = {}
roster.each do | keys, values|
	values = values.sort

new_hash[keys] = values
	

	end
	#binding.pry

	new_hash
end



#binding.pry

end

#names = name.add_student["Blake Johnson", 10]
#name.roster
#binding.pry
