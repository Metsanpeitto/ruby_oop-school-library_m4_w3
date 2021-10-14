require_relative './texts'
require_relative './features/create_book'
require_relative './features/create_person'
require_relative './features/create_rental'
require_relative './creators/book'
require_relative './creators/person'
require_relative './creators/rental'
require_relative './displayers/rentals'
require_relative './store/store'

class App
  include Texts
  def initialize
    @people = []
    @books = []
    @rentals = []
    loop
  end
  # rubocop:disable all
  def loop
    obtain_data
    Texts.text_intro
    number = gets.chomp
    running = true

    while running == true
      case number
      when '0'
        Texts.text_intro
        number = gets.chomp

      when '1'
        list_books
        number = '0'

      when '2'
        list_people
        number = '0'

      when '3'
        feature_create_person
        number = '0'

      when '4'
        feature_create_book
        number = '0'

      when '5'
        feature_create_rental
        number = '0'

      when '6'
        list_rentals
        number = '0'

      when '7'
        save_data
        running = false
      else
        Texts.text_intro
      end
    end
  end
end
# rubocop:enable all