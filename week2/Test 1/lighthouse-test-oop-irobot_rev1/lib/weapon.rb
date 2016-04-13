class Weapon < Item

  DEFAULT_NAME = "power_shock"
  DEFAULT_WEIGHT = 10
  DEFAULT_DAMAGE = 45

  attr_reader :damage  

  def initialize (name=DEFAULT_NAME, weight=DEFAULT_WEIGHT, damage=DEFAULT_DAMAGE) 
    @damage = damage
    super(name, weight)  
  end 

  def hit(enemy)
    enemy.wound(@damage) 
  end 

end 