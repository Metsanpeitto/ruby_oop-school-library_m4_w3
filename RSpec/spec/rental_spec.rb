require './classes/rental'

describe Rental do
  context 'Given arguments to initialize the class' do
    it 'create a rental with date, book title and name of the person who rents it ' do
      rental = Rental.new(Time.now.to_i)
      rental.book = 'The title'
      rental.person = 'Juan'
      expect(rental.book).to(eq('The title'))
    end
  end
end
