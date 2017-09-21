class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    self.roster[grade] = [] if !(self.roster[grade])
    self.roster[grade] << student_name
  end

  def grade(grade_no)
    self.roster[grade_no]
  end

  def sort
    new_roster = {}
    self.roster.each do |grade, students|
      new_roster[grade] = students.sort
    end
    self.roster = new_roster
  end
end
