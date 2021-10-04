require './classes/teacher'
require_relative './classes/person'

describe Teacher Person do
  context 'Given arguments to initialize the class' do
    subject { described_class.new(teacher) }

    let(:teacher) do
      Teacher.new('Foo bar')
    end

    it 'serializes object' do
      expect(subject.person).to eq({
                                     specialization: 'Foo bar'
                                   })
    end
    # it 'create a teacher with specialization as argument ' do
    #  teacher = Teacher.new('Science')
    #  expect(teacher.play_hookey).to(eq("¯\(ツ)/¯"))
    # end
  end
end
