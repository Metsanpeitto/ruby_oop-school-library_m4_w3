require './classes/teacher'
require './classes/person'

describe Teacher do
  context 'Given arguments to initialize the class' do
    subject { described_class.new(teacher) }

    let(:teacher) do
      Teacher.new(age:42, specialize:'Q-7', name: 'T1', parent_permission: true)
    end

    # it 'serializes object' do
    #   expect(subject.person).to eq({
    #                                  specialization: 'Foo bar'
    #                                })
    # end
    # it 'create a teacher with specialization as argument ' do
    #  teacher = Teacher.new('Science')
    #  expect(teacher.play_hookey).to(eq("¯\(ツ)/¯"))
    # end
  end
end
