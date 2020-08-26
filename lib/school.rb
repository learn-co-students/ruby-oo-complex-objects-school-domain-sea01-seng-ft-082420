class School
    attr_accessor :roster
    attr_reader :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_students = {}
        @roster.each{ |grade, names|
            sorted_students[grade] = names.sort
        }
        sorted_students
    end


end