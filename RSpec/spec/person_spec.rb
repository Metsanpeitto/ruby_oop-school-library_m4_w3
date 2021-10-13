require './classes/person'

describe Person do
  before :each do
    @person = Person.new(age: 24, parent_permission: true, name: 'Janni')
  end
  describe '#initialize' do
    it 'create a person with age, parent permission and name ' do
      expect(@person).to be_an_instance_of Person
    end

    it 'sets the new Person\'s name to \'Unknown\' if no name is provided' do
      person = Person.new(age: 33)
      expect(person.name).to(eq('Unknown'))
    end
    it 'sets the new Person\'s parent permission to \'true\' if not provided' do
      person = Person.new(age: 33)
      expect(person.parent_permission).to(eq(true))
    end
    it 'rais an error if  age is not provided' do
      
      expect{Person.new}.to(raise_error())
      
    end



  end
end
