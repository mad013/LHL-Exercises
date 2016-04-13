class GiantTuna < Fish

  def initialize
    super(weight=2, value=25) 
  end

  def sushiable?
    true
  end 

  def value_per_kg
    @value.to_f/@weight.to_f
  end

end 