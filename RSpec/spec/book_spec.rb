require './classes/book'

describe Book do
  before :each do
    @book = Book.new('BOOK TITLE', 'AUTHOR')
  end
  describe '#initialize' do
    it 'create a new book instance based' do
      expect(@book).to be_an_instance_of Book
    end
  end
  describe '#author' do
    it 'returns the book\'s author' do
      pp @book.author
      expect(@book.author).to(eq('AUTHOR'))
    end
  end

  describe '#title' do
    it 'returns the book\'s author' do
      pp @book.author
      expect(@book.title).to(eq('BOOK TITLE'))
    end
  end

    describe '#rentals' do
    it 'returns a rentals array containing all rentals info for the given book' do
      pp @book.author
      expect(@book.rentals).to match_array([])
    end
  end
end
