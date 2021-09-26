class Teacher < Person
  def initialize(specialization)
    super
    @specialization = specialization
  end

  def play_hookey
    "¯\(ツ)/¯"
  end

  def can_use_services?
    true
  end
end
