require './classes/classroom'
require './classes/student'

describe Classroom do
  context 'Given arguments to initialize the class' do
    it 'Adds new student in the classroom' do
      classroom = Classroom.new('4F')
      expect(classroom.label).to(eq('4F'))
    end

    it 'Adds new student in the classroom' do
      classroom = Classroom.new('4F')
      student = Student.new(name: 'abdelgahnykjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkj', age: 50, classroom: '4f')
      classroom.add_student(student)
      expect(classroom.students[0]).to(eq(student))
    end
  end
end
