require_relative '../classes/book'

def create_book(title, author)
  book = Book.new({ title: title, author: author })
  @books << book
end
