require_relative '../texts'
require_relative '../classes/corrector'
require_relative '../classes/person'
require_relative './student'

def create_person(role, age, name, _people)
  if role && age && name
    corrector = Corrector.new
    filtered_name = corrector.correct_name(name)
    person = {}
    if role == 'teacher'
      Texts.text_cp5
      # gets.chomp
      user = Person.new(age, true, filtered_name)
      person = { role: role, name: user.name, id: user.id, age: user.age }
      Texts.success_teacher
    else
      Texts.text_cp4
      parent_permission = gets.chomp
      permission = true
      permission = false if parent_permission.downcase == 'n'
      user = Person.new(age, permission, filtered_name)
      person = { role: role, name: user.name, id: user.id, age: user.age, parent_permission: permission, rentals: [] }
      create_student('4F', person)
      Texts.success_student
    end
    @people << person
  end
end
