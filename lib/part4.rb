class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
    	def #{attr_name}= value
        	if !defined? @#{attr_name}_history
                    @#{attr_name}_history = [@#{attr_name}]
                end
            @#{attr_name} = value
        	@#{attr_name}_history << @#{attr_name}
    	end
    }
    class_eval do
    def history(name)
    		instance_variable_get('@#{name}_history')
    	end
    end
  end
end

class Foo
	attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
print f.bar_history
f = Foo.new
f.bar = 4
print f.bar_history
f = Foo.new
print f.bar_history

