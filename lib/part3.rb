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
