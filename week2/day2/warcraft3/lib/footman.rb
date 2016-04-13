# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit 

  attr_reader :attack_power
  attr_accessor :health_points

  def initialize(hp=60, ap=10)
    @health_points = hp
    @attack_power = ap 
  end 

  def attack!(enemy)
    enemy.damage(attack_power)
  end 

  def damage(ap)
    self.health_points -= ap
  end 

end
