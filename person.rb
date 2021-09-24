class Person
   def initialize(:name = 'Unknown', :age, :parent_permission = true)
    @id = Time.now.to_i
    @name = :name
    @age = :age
    @parent_merission = :parent_permission
 end

 def get_id
    @id
 end  

  def get_name
    @name
 end

  def get_age
    @age
 end

  def set_name(name)
    @name = name
  end 

    def set_age(age)
    @name = age
  end

  def can_use_services?
   if is_of_age? && parent_permission == true
      true
   else
      false    
   end   
  end 
  
  private 

  def is_of_age?
   if @age >= 18
    true
   else 
    false  
   end   
  end 
end    