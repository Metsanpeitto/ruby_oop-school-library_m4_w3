require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age:, classroom:, name: 'Unknown', parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
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




x = Person.new(name: 'abdelgahnykjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkj', age: 50)
x.validate_name
pp x.name
