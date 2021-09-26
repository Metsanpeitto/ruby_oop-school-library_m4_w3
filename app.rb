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
  end

  def list_people()
    @people.each_with_index do |p, index|
      puts "#{index} ) [#{p[:role]}]  Name: #{p[:name]}, ID: #{p[:id]}, Age: #{p[:age]}"
    end
  end

  def list_rentals()
    @text.text_r1
    id = gets.chomp
    @rentals.each do |r|
      puts "#{r.person[:name]} rented #{r.book.title} by #{r.book.author} on #{r.date}" if r.person[:id].to_i == id.to_i
    end
  end

  def create_person(role, age, name)
    if role && age && name
      corrector = Corrector.new
      filtered_name = corrector.correct_name(name)
      person = {}
      if role == 'teacher'
        @text.text_cp5
        gets.chomp
        user = Person.new(age, true, filtered_name)
        person = { role: role, name: user.name, id: user.id, age: user.age }
        @text.success('Teacher')
      else
        @text.text_cp4
        # parent_permission = gets.chomp
        parent_permission = 'y'
        permission = true
        permission = false if parent_permission.downcase == 'n'
        user = Person.new(age, permission, filtered_name)
        person = { role: role, name: user.name, id: user.id, age: user.age }
        create_student('4F', person)
        @text.success('Student')
      end
      puts person
      @people << person
    end
  end

  def create_teacher(specialization, person)
    teacher = Teacher.new(specialization)
    person[:role] = 'teacher'
    person[:specialization] = teacher.specialization
    person
  end

  def create_student(classroom, person)
    student = Student.new(classroom)
    person[:role] = 'student'
    person[:classroom] = student.classroom
    person
  end

  def create_book(title, author)
    book = Book.new(title, author)
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
      create_person('student', age, name)
      feature_create_book
      feature_create_rental
    when '2'
      create_person('teacher', age, name)
    else
      "You gave me #{option} -- I have no idea what to do with that."
    end
  end

  def feature_create_book
    @text.text_cb1
    title = gets.chomp
    @text.text_cb2
    author = gets.chomp
    create_book(title, author)
    @text.success('book')
  end

  def feature_create_rental
    @text.text_cr1
    list_books
    book_index = gets.chomp
    @text.text_cr2
    list_people
    people_index = gets.chomp
    create_rental(@books[book_index.to_i], @people[people_index.to_i])
  end

  def start
    number = '0'
    while number != '7'
      case number
      when '0'
        @text.text_intro
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

      else
        @text.no_idea(number)
      end
    end
  end
end
