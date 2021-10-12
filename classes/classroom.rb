class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(params)
    @label = params[:label]
    @students = []
    student.classroom = self
  end

  def add_student(student)
    @students << student
  end
end
