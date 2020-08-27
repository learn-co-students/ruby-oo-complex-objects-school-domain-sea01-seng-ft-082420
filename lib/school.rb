require 'pry'
# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name 
    @roster = {}
  end 

  def roster 
      @roster 
  end 


  def add_student(name, grade)
     roster[grade] ||= []
     roster[grade] << name
  end 

  def grade(grade)
    roster[grade]
  end

  def sort 
    sorted_student = {}
    roster.each {|grade, name| sorted_student[grade] = name.sort}
    sorted_student
  end 


end 