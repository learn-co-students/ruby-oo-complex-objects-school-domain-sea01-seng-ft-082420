# code here!
require 'pry'

class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.include? (grade)
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(num)
        self.roster[num]
    end

    def sort
        self.roster.each do |grade, student_name|
            roster[grade] = student_name.sort
        end
        roster
    end 

end
