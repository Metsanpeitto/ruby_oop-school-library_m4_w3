require_relative './texts'
require_relative './features/create_book'
require_relative './features/create_person'
require_relative './features/create_rental'
require_relative './creators/book'
require_relative './creators/person'
require_relative './creators/rental'
require_relative './displayers/rentals'

class App
  include Texts
  def initialize
    @people = []
    @books = []
    @rentals = []
    loop
  end

  def loop
    Texts.text_intro
    number = gets.chomp
    running = true
    puts number
    while running == true
      case number
      when '0'
        Texts.text_intro
        number = gets.chomp

      when '1'
        number = list_books
      when '2'
        number = list_people
      when '3'
        number = feature_create_person
      when '4'
        number = feature_create_book
      when '5'
        number = feature_create_rental
      when '6'
        number = list_rentals
      end
    end
  end
end
