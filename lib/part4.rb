class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    attr_name_history = attr_name.to_s + '_history'

    class_eval %Q"
      def #{attr_name}= newValue
        if defined? @#{attr_name_history}
          @#{attr_name_history} << newValue
        else
          @#{attr_name_history} = [newValue]
        end
        @#{attr_name} = newValue
      end
    "

  end
end

class TestClass
  attr_accessor_with_history :value

  def initialize(value)
    @value = value
  end



  def printHistory
    puts @value_history
  end

end


example = TestClass.new(5)
example.value = 12
example.value = 25
example.value = 14
puts 'Printing history:'
example.printHistory
