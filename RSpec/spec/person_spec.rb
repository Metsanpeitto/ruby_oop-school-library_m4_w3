require './classes/person'

describe Person do
  context 'Given arguments to initialize the class' do
    it 'create a person with age, parent permission and name ' do
      person = Person.new(24, true, 'Janni')
      expect(person.age).to(eq(24))
    end
  end
end
