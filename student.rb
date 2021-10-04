require_relative 'person'

class Student < Person
  def initialize(params)
    super
    @classroom = params[:classroom]
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
