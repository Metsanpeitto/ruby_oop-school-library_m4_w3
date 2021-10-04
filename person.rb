class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(parameters)
    @id = Time.now.to_i
    @name = parameters[:name] || 'Unknown'
    @age = parameters[:age]
    @parent_permission = parameters.fetch(:parent_permission, true)
  end

  def can_use_services?
    of_age? || parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end
