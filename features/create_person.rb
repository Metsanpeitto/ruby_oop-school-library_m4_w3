require_relative '../texts'
require_relative '../creators/person'

def feature_create_person
  Texts.text_cp1
  option = gets.chomp
  Texts.text_cp2
  age = gets.chomp
  Texts.text_cp3
  name = gets.chomp
  case option
  when '1'
    create_person('student', age.to_i, name, people)
  when '2'
    create_person('teacher', age.to_i, name, people)
  else
    "You gave me #{option} -- I have no idea what to do with that."
  end
end
