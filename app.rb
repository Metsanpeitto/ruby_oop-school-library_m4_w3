require './book'
require './classroom'
require './corrector'
require './person'
require './rental'
require './student'
require './teacher'
require './text'

class App
  def initialize()
    @books = []
    @people = []
    @rentals = []
    @text = Text.new
  end

  def list_books()
    @books.each_with_index do |b, index|
      puts "#{index} ) #{b.title} by #{b.author}"
    end
    '0'
  end

  def list_people()
    @people.each_with_index do |p, index|
      puts "#{index} ) [#{p.class}]  Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    end
    '0'
  end

  def list_rentals()
    @text.text_r1
    id = gets.chomp
    @rentals.each do |r|
      puts "#{r.person.name} rented #{r.book.title} by #{r.book.author} on #{r.date}" if r.person.id.to_i == id.to_i
    end
    '0'
  end

  def create_person(parameters)
    return unless parameters[:role] && parameters[:age] && parameters[:name]

    person = if parameters[:role] == 'teacher'
               teacher_ui(parameters)
             else
               student_ui(parameters)
             end
    @people << person
  end

  def teacher_ui(parameters)
    @text.text_cp5
    specialization = gets.chomp
    corrector = Corrector.new
    parameters = { specialization: specialization, age: parameters[:age], permission: true,
                   name: corrector.correct_name(parameters[:name]) }
    person = Teacher.new(parameters)
    @text.success('Teacher')
    person
  end

  def student_ui(parameters)
    @text.text_cp4
    parent_permission = gets.chomp
    @text.text_cp6
    classroom = gets.chomp
    corrector = Corrector.new
    permission = true
    permission = false if parent_permission.downcase == 'n'
    parameters = { clasroom: classroom, age: parameters[:age], permission: permission,
                   name: corrector.correct_name(parameters[:name]) }
    person = Student.new(parameters)
    @text.success('Student')
    person
  end

  def create_book(title, author)
    parameters = { title: title, author: author }
    book = Book.new(parameters)
    @books << book
  end

  def create_rental(book, person)
    rental = Rental.new(Time.now.to_i)
    rental.book = book
    rental.person = person
    @text.success('rental')
    @rentals << rental
  end

  def feature_create_person
    @text.text_cp1
    option = gets.chomp
    @text.text_cp2
    age = gets.chomp
    @text.text_cp3
    name = gets.chomp

    case option
    when '1'
      create_person(role: 'student', age: age, name: name)
    when '2'
      create_person(role: 'teacher', age: age, name: name)
    else
      "You gave me #{option} -- I have no idea what to do with that."
    end
    '0'
  end

  def feature_create_book
    @text.text_cb1
    title = gets.chomp
    @text.text_cb2
    author = gets.chomp
    create_book(title, author)
    @text.success('book')
    '0'
  end

  def feature_create_rental
    @text.text_cr1
    list_books
    book_index = gets.chomp
    @text.text_cr2
    list_people
    people_index = gets.chomp
    create_rental(@books[book_index.to_i], @people[people_index.to_i])
    '0'
  end

  def start # rubocop:disable Metrics/CyclomaticComplexity
    number = '0'
    while number != '7'
      case number
      when '0'
        @text.text_intro
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
