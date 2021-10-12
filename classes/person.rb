require_relative 'corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(parameters)
    puts parameters
    @id = Time.now.to_i
    @name = parameters[:name] || 'Unknown'
    @age = parameters[:age]
    @parent_permission = parameters.fetch(:parent_permission, true)
    @corrector = Corrector.new
    @rentals = []
  end

  def can_use_services?
    of_age? || parent_permission == true
  end

  def validate_name
    @name = @corrector.correct_name @name
  end

  def add_rental(rental)
    @rentals << rental
  end

  def from_json(data)
    @id = data['id']
    @rentals = data['rentals']
  end

  private

  def of_age?
    @age >= 18
  end
end
