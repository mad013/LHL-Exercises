class Barracks

  attr_accessor :gold, :food

  def initialize(g=1000, f=80)
    @gold = g
    @food = f
  end 

  def can_train_footman?
    if self.gold >= 135 && self.food >= 2
      true 
    else 
      false
    end 
  end 

  def train_footman
    if can_train_footman? == true
      self.gold -= 135 
      self.food -= 2
      Footman.new
    else 
      nil
    end 
  end

  def can_train_peasant?
    if self.gold >= 90 && self.food >=5
      true 
    end 
  end 

  def train_peasant
    if can_train_peasant? == true
      self.gold -= 90
      self.food -=5
      Peasant.new
    else
      nil
    end 
  end 

end 
 