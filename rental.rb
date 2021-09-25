class Rental
  attr_reader :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end

  def book=(book)
    @book = book
    book.rentals.push << self unless book.rentals.include?(self)
  end

  def persons=(person)
    @person = person
    person.rentals.push << self unless person.rentals.include?(self)
  end
end
