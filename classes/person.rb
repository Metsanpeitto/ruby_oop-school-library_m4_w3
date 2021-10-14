require_relative './corrector'

class Person
  attr_accessor :rentals, :id, :age, :name
  attr_reader :parent_permission

  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Time.now.to_i
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @corrector = Corrector.new

  end

  def can_use_services?
    of_age? || parent_permission == true
  end

  def add_rental(rental)
    @rentals << rental
  end

  def from_json(data)
    @id = data['id']
    @rentals = data['rentals']
  end

  def validate_name
    @name = @corrector.correct_name(name: @name)

  end

  private

  def of_age?
    @age >= 18
  end
end
