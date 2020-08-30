class School
attr_accessor :roster 

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.include?(grade)
            @roster[grade] << student_name
        else @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, names|
            @roster[grade] = names.map.sort
        end
    end
end