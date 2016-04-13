class BoxOfBolts < Item

  attr_reader :name, :weight, :heal

  def initialize 
    super('Box of bolts', 25)
    
  end

  def feed(robot)
    robot.heal(20)  
  end 

end 


# def initialize #no parameters
# how do you get name/weight from item?  
# 
#