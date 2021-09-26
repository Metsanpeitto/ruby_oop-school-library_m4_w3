# Create a main.rb file that will serve as your console app entry-point. It should have methods that do the following:
# List all books.
# List all people.
# Create a person (teacher or student, not a plain Person).
# Create a book.
# Create a rental.
# List all rentals for a given person id.
# In your main.rb define the entry point, this will be a method called main that is invoked at the end of your file. This method should do the following:
# Present the user with a list of options to perform.
# Lets users choose an option.
# If needed, ask for parameters for the option.
# Have a way to quit the app.
# =end
require './book'
require './classroom'
require './corrector'
require './person'
require './rental'
require './student'
require './teacher'
require './text'

@books = []
@people = []
@rentals = []
@text = Text.new

def list_books
  @books.each do |b, index|
    puts `#{index}) #{b.title} by #{b.author}`
  end
end

def list_people
  @people.each do |p, index|
    puts ` #{index}) [#{p.role}] #{p.name} by #{p.author}`
  end
end

def list_rentals()
  @text.text_r1
  id = gets.chomp
  @rentals.each do |r|
    puts `#{r.person.name} rented #{r.book.title} by #{r.book.author} on #{r.date}` if r.id == id
  end
end

def create_person(role, age, name)
  if role && age && name
    corrector = Corrector.new
    filtered_name = corrector.correct_name(name)
    person = {}
    if role.downcase == 'teacher'
      @text.text_cp5
      gets.chomp
      user = Person.new(age, true, filtered_name)
      person = { role: role, name: user.name_get, id: user.id_get, age: user.age_get }
      @text.success('Teacher')
    else
      @text.text_cp4
      parent_permission = gets.chomp
      permission = true
      permission = false if parent_permission.downcase == 'n'
      user = Person.new(age, permission, filtered_name)
      person = { role: role, name: user.name_get, id: user.id_get, age: user.age_get }
      create_student('4F', person)
      @text.success('Student')
    end
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
  `return unless book && person`
  rental = Book.new(book, person)
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
  age = 25
  name = 'Pako'

  case option
  when '1'
    create_person('student', age, name)
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
  create_rental(@books[book_index], @people[people_index])
end

def main(_start)
  @text.text_intro
  number = gets.chomp
  case number
  when '1'
    list_books
  when '2'
    list_people
  when '3'
    feature_create_person
  when '4'
    feature_create_book
  when '5'
    feature_create_rental
  when '6'
    list_rentals
  else
    @text.no_idea(number)
  end
  main('start')
end
main('start')
