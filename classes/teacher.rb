require_relative 'person'

class Teacher < Person
  def initialize(parameters)
    super(parameters)
    @specialization = parameters[:specialization]
  end

  def can_use_services?
    true
  end
end
