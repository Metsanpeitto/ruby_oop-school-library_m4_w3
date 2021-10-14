require_relative '../texts'
require_relative '../creators/rental'
require_relative '../displayers/books'
require_relative '../displayers/people'

def feature_create_rental
  Texts.text_cr1
  list_books
  book_index = gets.chomp

  Texts.text_cr2
  list_people
  people_index = gets.chomp

  book = @books[book_index.to_i]
  person = @people[people_index.to_i]
  create_rental(book.title, person[:name])

end
