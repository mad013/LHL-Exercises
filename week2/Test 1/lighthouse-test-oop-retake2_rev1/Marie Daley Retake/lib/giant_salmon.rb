class GiantSalmon < Fish

  def initialize
    super(weight=4, value=30)
  end

  def sushiable?
    true
  end 

  def value_per_kg
    @value.to_f/@weight.to_f
  end 

end 