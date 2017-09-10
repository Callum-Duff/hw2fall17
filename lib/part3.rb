class Dessert
  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    return true unless calories >= 200
    return false
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    return true unless flavor.downcase == 'black licorice'
    return false
  end
end


