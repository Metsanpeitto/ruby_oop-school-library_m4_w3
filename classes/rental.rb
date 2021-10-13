class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end

  def book=(book)
    p book
    p book.class
    @book = book
    book.add_rental(self)
  end

  def person=(person)
    p person
    p person.class
    person[:rentals].push(self)
    @person = person
  end
end
