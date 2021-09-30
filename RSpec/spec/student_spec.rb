require './classes/student'
require './classes/person'

describe Student do
  context 'Given arguments to initialize the class' do
    # it 'create a student' do
    # student = Student.new('4F', Person)
    it expect(subject.class.play_hookey).to(eq("¯\(ツ)/¯"))
    # end
  end
end
