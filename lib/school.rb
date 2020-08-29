require "pry"
class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    #add a student
    #able to add multiple students to a class (grade)
    #able to add students to different grades
    def add_student(name, grade)
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else
        @roster[grade] = []
        @roster[grade] << name
        end
    end

    #retreive students from a grade
    def grade(grade)
        @roster[grade]
    end

    #sort the students alphabetically in their grade
    def sort
        @roster.map do |grade, names|
            @roster[grade] = names.sort
        end
        @roster
    end


end