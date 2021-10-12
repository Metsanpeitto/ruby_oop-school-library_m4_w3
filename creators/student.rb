require_relative '../classes/student'

def create_student(classroom, person)
  student = Student.new(classroom)
  person[:role] = 'student'
  person[:classroom] = student.classroom
  person
end
