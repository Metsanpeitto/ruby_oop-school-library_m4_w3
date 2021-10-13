class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end

  def book=(book)
    @book = book
    p book
    puts book.class
    book.add_rental(self)
  end

  def person=(person)
    puts "person method"
    p person.class
    @person = person
    puts person
    person.add_rental(self)
  end
end
