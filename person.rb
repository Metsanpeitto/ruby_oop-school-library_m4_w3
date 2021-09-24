class Person
  def initialize(age, parent_permission = [true], name = 'Unknown')
    @id = Time.now.to_i
    @name = name
    @age = age
    @parent_merission = parent_permission
  end

  def id_get
    @id
  end

  def name_get
    @name
  end

  def age_get
    @age
  end

  def name_set(name)
    @name = name
  end

  def age_set(age)
    @name = age
  end

  def can_use_services?
    is_of_age? && parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end
