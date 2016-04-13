class Unit

attr_reader :health_points, :attack_power

  def initialize(hp=30, ap=5)
    @health_points = hp
    @attack_power = ap
  end 

  def damage(attack_power) 
    @health_points -= attack_power
  end 

  def attack!(enemy_unit)
    enemy_unit.damage(attack_power)
  end 

end 