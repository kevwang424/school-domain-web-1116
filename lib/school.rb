# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new([])
  end

  def add_student(name,grade)
    @roster[grade] = [] if !@roster.include?(grade)
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each { |grade, students| students.sort! }
  end
end
