require_relative '../texts'
require_relative '../creators/book'

def feature_create_book
  Texts.text_cb1
  title = gets.chomp
  Texts.text_cb2
  author = gets.chomp
  Texts.success_book
  create_book(title, author)

end
