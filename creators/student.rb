require_relative '../classes/student'

def create_student(parameters)
  student = Student.new(parameters)
  p 'Student class'
  p student
  p parameters
  person = parameters[:person]
  person[:role] = 'student'
  person[:classroom] = @classroom
  person
end
