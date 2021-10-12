require_relative '../texts'
require_relative '../classes/rental'

def create_rental(book, person)
  rental = Rental.new(Time.now.to_i)
  rental.book = book
  rental.person = person
  Texts.success_rental
  @rentals << rental
end
