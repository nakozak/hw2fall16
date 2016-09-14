class CartesianProduct
  include Enumerable

  def initialize (a, b)
      @a, @b = a, b
    end

    def each
      @a.each{ |x| @b.each { |y| yield [x,y] } }
    end
  end


c = CartesianProduct.new([:a,:b], [4,5]) 
c.each { |selt| puts selt.inspect }

c = CartesianProduct.new([:a,:b], [])
c.each { |selt| puts selt.inspect }