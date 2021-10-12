class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(params)
    @title = params[:title]
    @author = params[:author]
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end
end
