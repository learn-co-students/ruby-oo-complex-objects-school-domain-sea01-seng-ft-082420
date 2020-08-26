class School
    attr_reader :roster

    def initialize(school_name)
        @school_name = school_name
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
        sorted_roster = {}
        @roster.each {|grade, students| sorted_roster[grade] = students.sort}
        sorted_roster
    end
end