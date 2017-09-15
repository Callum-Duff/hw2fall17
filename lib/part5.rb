class CartesianProduct
  include Enumerable
  
  attr_accessor :a
  attr_accessor :b
  
  def initialize(a,b)
    #YOUR CODE HERE
    @a = a
    @b = b
  end

  def each
    #YOUR CODE HERE
    @a.each { |aEle| @b.each { |bEle| yield [aEle, bEle]}} 
  end

end
