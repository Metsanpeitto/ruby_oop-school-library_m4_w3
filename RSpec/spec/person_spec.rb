require './classes/person'

describe Person do
  context 'Given arguments to initialize the class' do
    it 'create a person with age, parent permission and name ' do
      person = Person.new(age: 24, parent_permission: true, name: 'Janni')
      expect(person.age).to(eq(24))
    end
  end
end
