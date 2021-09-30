require './classes/teacher'
require './classes/person'

describe Teacher do
  context 'Given arguments to initialize the class' do
    it 'create a teacher with specialization as argument ' do
      teacher = Teacher.new('Science')
      expect(teacher.play_hookey).to(eq("¯\(ツ)/¯"))
    end
  end
end
