require_relative '../texts'
require_relative '../creators/rental'
require_relative '../displayers/books'
require_relative '../displayers/people'

def feature_create_rental
  Texts.text_cr1
  list_books
  # book_index = gets.chomp
  book_index = '0'
  Texts.text_cr2
  list_people
  # people_index = gets.chomp
  people_index = '0'
  create_rental(@books[book_index.to_i], @people[people_index.to_i])
end
