require './classes/rental'
require './classes/book'
require './classes/person'

describe Rental do
  context 'Given arguments to initialize the class' do
    it 'create a rental with date, book title and name of the person who rents it ' do
      rental = Rental.new(Time.now.to_i)
      book = Book.new({ title: 'The title', author: 'AUTHOR' })
      person = Person.new(age: 24, parent_permission: true, name: 'Janni')
      rental.book = book
      rental.person = person
      expect(rental.book).to(eq('The title'))
    end
  end
end
