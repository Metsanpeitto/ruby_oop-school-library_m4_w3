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
  end

  describe '#can_use_services?' do
    context 'under age' do
      describe 'with no parent_permission' do
        it 'should not be allowed (returns false)' do
          person = Person.new(age: 12, parent_permission: false)
          expect(person.can_use_services?).to(eq(false))
        end
      end
      describe 'with  parent_permission' do
        it '(returns true)' do
          person = Person.new(age: 12, parent_permission: true)
          expect(person.can_use_services?).to(eq(true))
        end
      end
    end

    context 'Adult' do
      it 'returns true' do
        person = Person.new(age: 43)
        expect(person.can_use_services?).to(eq(true))
      end
    end
  end
end
