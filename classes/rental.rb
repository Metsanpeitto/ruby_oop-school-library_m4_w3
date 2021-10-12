class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end

<<<<<<< HEAD
  def books=(book)
    @book = book.title
    book.rentals.push << self unless book.rentals.include?(self)
  end

  def persons=(person)
    @person = person.name
    person.rentals.push << self unless person.rentals.include?(self)
=======
  def book=(book)
    @book = book
    book.add_rental(self)
  end

  def person=(person)
    @person = person
    person.add_rental(self)
>>>>>>> tasks5-copy
  end
end
