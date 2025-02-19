# code here!
require 'pry'
class School
  attr_reader :roster, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.each do |grade, name|
      name.sort!
    end
  end
end
