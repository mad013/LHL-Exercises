class Robot

#STARTING_POSITION = [0,0]

attr_reader :position, :items, :items_weight, :health 
attr_accessor :equipped_weapon

  def initialize(x=0, y=0) 
    @position = [x, y]
    @items = [] #
    @health = 100 # why did putting these up here make a difference?? 
    @equipped_weapon = nil 
  end 

  def move_left
    @position[0] -= 1
  end 

  def move_right
    @position[0] += 1
  end 

  def move_up 
    @position[1] += 1
  end

  def move_down
    @position[1] -= 1
  end 

  def pick_up(item_x)
    
    if item_x.is_a? Weapon
      @equipped_weapon = item_x
    end 
    
    unless items_weight >= 250
    @items << item_x
    end

  end 

  def items_weight
      items_weight = 0
      @items.each do |item|
        items_weight += item.weight
      end 
      items_weight
  end 

  def wound(wound_strength)
    @health -= wound_strength
     @health = 0 if @health < 0 
  end

  def heal(heal_strength)
    @health += heal_strength
    @health = 100 if @health > 100
  end 

  def attack(enemy_robot)
    if equipped_weapon
        equipped_weapon.hit(enemy_robot)
    else
       enemy_robot.wound(5)
    end 
  end  



end 
