require 'pry'

class School 
    attr_reader :name
    attr_accessor :roster, :add_student

    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(student_name, grade)
        if roster[grade] 
            @roster[grade] << student_name 
        else 
            @roster[grade] = [] 
            @roster[grade] << student_name 
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort 
        sorted_roster = {}
        @roster.map do |g,s|
            sorted_roster[g] ||= s.sort 
        end  
        sorted_roster 
    end 

end 

school = School.new("Kopachuck")
school.add_student("Mitch", 12)
school.add_student("John", 12)
school.roster 
# binding.pry 
 