require_relative '../classes/student'

def create_student(parameters)
  Student.new(parameters)
  person = parameters[:person]
  person[:role] = 'student'
  person[:classroom] = @classroom
  person
end
