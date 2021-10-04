class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(params)
    @date = params[:date]
    @book = params[:book]
    @person = params[:person]
  end

  def books=(book)
    @book = book
    book.rentals << self unless book.rentals.include?(self)
  end

  def persons=(person)
    @person = person
    person.rentals << self unless person.rentals.include?(self)
  end
end
