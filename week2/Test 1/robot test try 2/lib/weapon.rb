class Weapon < Item

attr_reader :damage, :name, :weight

  def initialize(name, weight, damage)
    @name='power_shock'
    @weight=10
    @damage = 45
  end 

  def hit(enemy)
    enemy.wound(@damage)
  end 

end 