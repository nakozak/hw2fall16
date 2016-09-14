class Dessert
  attr_accessor :name
  attr_accessor :calories
  
  def initialize(name, calories)
    @name,@calories = name,calories
  end
    
   
  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end
  
  def delicious?
   return true
  end

end
apple = Dessert.new("apple",150)
puts "Is apple healthy? #{apple.healthy?}"

class JellyBean < Dessert
  
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  
  
  def delicious?
    if @flavor =~ /black licorice/i
      return false
    else 
      return true
    end
  end
end
cake = Dessert.new("cake", 1300)
fruit = Dessert.new("fruit", 100)
jellybean1 = JellyBean.new("jellybean", 5, "black licorice")
jellybean2 = JellyBean.new("jellybean", 5, "strawberry")

puts "Is cake healthy? #{cake.healthy?}"
puts "Is cake delicious? #{cake.delicious?}"

puts "Is fruit healthy? #{fruit.healthy?}"
puts "Is fruit delicious? #{fruit.delicious?}"

puts "Is jellybean1 healthy? #{jellybean1.healthy?}"
puts "Is jellybean1 delicious? #{jellybean1.delicious?}"

puts "Is jellybean2 healthy? #{jellybean2.healthy?}"
puts "Is jellybean2 delicious? #{jellybean2.delicious?}"