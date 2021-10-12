require_relative 'person'

class Student < Person
  def initialize(params)
    super
    @classroom = params[:classroom]
  end

  def play_hookey
    "¯\(ツ)/¯"
  end

  # This is needed in order for classroom to create the students
  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push << self unless classroom.students.include?(self)
  end
end
