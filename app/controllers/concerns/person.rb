class Person
  
  attr_accessor :nickname
  
  def initialize(name, age)
    @name = name
    @age = age
    @nickname = name.slice(0, 4)
  end
  
  def introduce
    return "Name: #{@name}\tAge:#{@age}"
  end
  
  def birth_year
    return Time.now.year - @age
  end
  
end