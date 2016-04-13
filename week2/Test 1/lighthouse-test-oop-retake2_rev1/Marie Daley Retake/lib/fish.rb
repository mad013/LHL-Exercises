class Fish

  attr_reader :weight, :value

  def initialize(weight, value)
    @weight = weight
    @value = value 
  end 

  def sushiable?
    false
  end 

  def value_per_kg
    @value.to_f/@weight.to_f
  end

end 