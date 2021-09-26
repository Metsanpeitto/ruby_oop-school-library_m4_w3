class Person
  attr_accessor :rentals, :id, :age, :name

  def initialize(age, parent_permission = nil, name = 'Unknown')
    @id = Time.now.to_i
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    is_of_age? && parent_permission == true
  end

  def add_rental(_rentals)
    @rentals << rental
  end

  private

  def of_age?
    @age >= 18
  end
end
