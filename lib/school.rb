class School
    attr_accessor :grade, :student ,:roster
    attr_reader :school
    def initialize(name)
        @school = name
        @roster = {}
    end
    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
           @roster[key] = value.sort
        end
        @roster.sort.to_h
    end
end