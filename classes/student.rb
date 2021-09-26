class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super
    @classroom = classroom
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
