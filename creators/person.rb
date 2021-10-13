require_relative '../texts'
require_relative '../classes/corrector'
require_relative '../classes/person'
require_relative './student'


# rubocop: disable Metrics/MethodLength
def create_person(role, age, name, _people)
  return unless role && age && name

  corrector = Corrector.new
  filtered_name = corrector.correct_name(name)
  person = {}
  if role == 'teacher'
    Texts.text_cp5
    gets.chomp
    user = Person.new(age, true, filtered_name)
    person = { role: role, name: user.name, id: user.id, age: user.age }
    Texts.success_teacher
  else
    Texts.text_cp4
    parent_permission = gets.chomp
    permission = true
    permission = false if parent_permission.downcase == 'n'
    user = Person.new({ age: age, permission: permission, name: filtered_name })
    person = { role: role, name: user.name, id: user.id, age: user.age, parent_permission: permission, rentals: [] }
    create_student({ classroom: '4F', person: person })
    Texts.success_student

  end

  @people << person
end
# rubocop:enable all
