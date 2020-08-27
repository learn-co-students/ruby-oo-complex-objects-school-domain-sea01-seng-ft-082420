# code here!
require 'pry'
class School
    attr_reader :school
    attr_accessor :student, :roster

    def roster
        @roster ||= {}
    end

    def initialize(school)
        @school=school
    end


    def add_student(name,grade)
        @roster ||= {}
        @roster[grade] ||= @roster[grade]=[]
        @roster[grade] << name
        #@roster= {grade=>[name]}
        #@roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key,value|
            @roster[key]=@roster[key].sort
        end
    end
end
