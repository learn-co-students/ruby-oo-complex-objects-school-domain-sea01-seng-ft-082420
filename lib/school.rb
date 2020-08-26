
class School

    attr_reader :roster
    
    def initialize (name)
        @name = name
        @roster = {}
       
    end

    def add_student (student_name, school_year)
        if roster.include? (school_year)
            roster[school_year] << student_name
        else
            roster[school_year] = []
            roster[school_year] << student_name
        end
    end

    def grade (school_year)
        roster[school_year]
    end

    def sort
        sorted_hash = {}
        roster.each do |grades, names|
            sorted_hash[grades] = names.sort
        end
        sorted_hash
    end

end

