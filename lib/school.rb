# code here!
require 'pry'
class School
  attr_reader :roster, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] = []
    if @roster.include?(grade)
      @roster
      binding.pry
    else
      @roster[grade] << name
    end
  end
  def grade(grade)
    @roster[grade]
  end
end
