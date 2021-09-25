class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(_name)
    @label = label
    @students = []
    student.classroom = self
  end

  def add_student(student)
    @students << student
  end
end
