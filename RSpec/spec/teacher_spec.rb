require './classes/teacher'
require './classes/person'

describe Teacher do
  context 'Given arguments to initialize the class' do
    subject { described_class.new(teacher) }

    let(:teacher) do
      Teacher.new(age: 42, specialize: 'Q-7', name: 'T1', parent_permission: true)
    end
  end
end
