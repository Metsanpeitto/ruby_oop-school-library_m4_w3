require_relative 'person'

class Student < Person
  def initialize(parameters)
    puts 'In student'
    p parameters[:classroom]
    p parameters.class
    super(parameters[:person])
    @classroom = parameters[:classroom]
  end

  def play_hookey
    "¯\(ツ)/¯"
  end

  # This is needed in order for classroom to create the students
  def classroom=(classroom)
    classroom.add_student(self)
  end
end
