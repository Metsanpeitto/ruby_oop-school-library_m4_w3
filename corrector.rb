class Corrector
  def correct_name(name)
    first_letter = name[0].capitalize
    str = name
    str[0] = first_letter
    str[0, 11]
  end
end
