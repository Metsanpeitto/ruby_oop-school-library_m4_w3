class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end

  def book=(book)
    @book = book.title
    book.rentals << self unless book.rentals.include?(self)
  end

  def person=(person)
    @person = person.name
    person.rentals << self unless person.rentals.include?(self)
  end
end
