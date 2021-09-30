require './classes/classroom'

describe Classroom do
  context 'Given arguments to initialize the class' do
    it 'create a new class giving it a label' do
      classroom = Classroom.new('4F')
      expect(classroom.label).to(eq('4F'))
    end
  end
end
