require './classes/student'
require './classes/person'

describe Student do
  context 'Given arguments to initialize the class' do
    it 'create a student' do
      student = Student.new(name: 'abdelgahnykjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkj', age: 50, classroom: '4f')
      expect(student.play_hookey).to(eq("¯\(ツ)/¯"))
    end
    it 'returns classroom of student' do
      student = Student.new(name: 'abdelgahnykjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkj', age: 50, classroom: '4f')
      expect(student.classroom).to(eq('4f'))
    end
    it 'returns id of student' do
      student = Student.new(name: 'abdelgahnykjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkj', age: 50, classroom: '4f')
      expect(student.id).to be_kind_of(Integer)
    end
  end
end
