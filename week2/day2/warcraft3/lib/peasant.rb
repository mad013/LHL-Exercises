class Peasant

  attr_reader :health_points, :attack_power

  def initialize(hp=35, ap=0)
    @health_points = hp
    @attack_power = ap
  end 

end 
