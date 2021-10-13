require './classes/student'
require './classes/person'

describe Student do
  context 'Given arguments to initialize the class' do
<<<<<<< HEAD
    # it 'create a student' do
    p student = Student.new('4F', Person)
    # it expect(student.play_hookey).to(eq("¯\(ツ)/¯"))
    # end
=======
     it 'create a student' do
     student = Student.new(name: 'abdelgahnykjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkj', age: 50, classroom: '4f')
     expect(student.play_hookey).to(eq("¯\(ツ)/¯"))
     end
>>>>>>> 07ae989623c5cabd71c8643399ad39b537210c99
  end
end
