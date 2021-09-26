require_relative '../classes/teacher'

def create_teacher(specialization, person)
  teacher = Teacher.new(specialization)
  person[:role] = 'teacher'
  person[:specialization] = teacher.specialization
  person
end
