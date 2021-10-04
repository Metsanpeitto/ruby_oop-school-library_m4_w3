require_relative 'person'

class Teacher < Person
  def initialize(parameters)
    puts parameters
    super(parameters)
    @specialization = parameters[:specialization]
  end

  def can_use_services?
    true
  end
end
