require_relative '../classes/book'

def create_book(title, author)
  book = Book.new(title, author)
  @books << book
end
