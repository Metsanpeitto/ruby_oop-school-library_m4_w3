module Texts
  def self.text_intro
    puts <<-HEREDOC
         Please choose an option by entering a number:
         1 - List all books
         2 - List all people
         3 - Create a person
         4 - Create a book
         5 - Create a rental
         6- List all rentals for a given person id
         7 - Exit
         #{'    '}
    HEREDOC
  end

  def self.text_cp1
    puts 'Do you want to create a student (1) or a teacher(2)? [Input the number]:'
  end

  def self.text_cp2
    puts 'Age:'
  end

  def self.text_cp3
    puts 'Name:'
  end

  def self.text_cp4
    puts 'Has parent permission? [Y/N]:'
  end

  def self.text_cp5
    puts 'Specialization:'
  end

  def self.text_cb1
    puts 'What is the title of the book:'
  end

  def self.text_cb2
    puts 'Who is the author of the book:'
  end

  def self.text_cr1
    puts 'Create a Rental'
    puts 'Select a book from the following list byindex number'
  end

  def self.text_cr2
    puts 'Select a person from the following list by index number (NOT ID!)'
  end

  def self.text_r1
    puts 'ID of person:'
  end

  def self.no_idea
    puts 'I have no idea what to do with that.'
  end

  def self.success_student
    puts 'Student successfully created!'
  end

  def self.success_teacher
    puts 'Teacher successfully created!'
  end

  def self.success_rental
    puts 'Rentals successfully created!'
  end

  def self.success_book
    puts 'Book successfully created!'
  end
end
