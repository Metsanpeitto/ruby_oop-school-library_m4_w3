class Text
  def text_intro
    puts "
         Please choose an option by entering a number:
         1 - List all books
         2 - List all people
         3 - Create a person
         4 - Create a book
         5 - Create a rental
         6- List all rentals for a given person id
         7 - Exit
             "
  end

  def text_cp1
    puts 'Do you want to create a student (1) or a teacher(2)? [Input the number]:'
  end

  def text_cp2
    puts 'Age:'
  end

  def text_cp3
    puts 'Name:'
  end

  def text_cp4
    puts 'Has parent permission? [Y/N]:'
  end

  def text_cp5
    puts 'Specialization:'
  end

  def text_cp6
    puts 'What is the classroom?'
  end

  def text_cb1
    puts 'What is the title of the book:'
  end

  def text_cb2
    puts 'Who is the author of the book:'
  end

  def text_cr1
    puts 'Create a Rental'
    puts 'Select a book from the following list byindex number'
  end

  def text_cr2
    puts 'Select a person from the following list by index number (NOT ID!)'
  end

  def text_r1
    puts 'ID of person:'
  end

  def no_idea(number)
    puts "You gave me #{number} -- I have no idea what to do with that."
  end

  def success(name)
    puts "#{name} successfully created!"
  end
end
