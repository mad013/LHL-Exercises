class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end 

end 

class Mammal < Animal
#attr_accessor :warm_blooded?  
  
  def warm_blooded?
    true 
  end
end

class Primate < Mammal
#attr_accessor :can_fly? :num_legs                                                                                                                                                 
  def walk_upright?
    true 
  end 
end 

class Chimpanzee < Primate
  attr_accessor :name
  def name 
  puts "I'm #{@name} and I'm a Chimpanzee!"
end 

A1 = Animal.new("Marie")




#class Amphibian < Animal 
  
#attr_accessor :warm_blooded? :can_fly? :num_legs  
  
 # @num_legs = 4

  #def warm_blooded? 
   # false 
  #end

  #def can_fly?
   # false
  #end  
#end


#class Bird < Animal

#attr_accessor :warm_blooded? :can_fly? :num_legs

 # @num_legs = 2

  #def warm_blooded? 
   # false 
  #end
  
  #def can_fly?
   # true
  #end 
# end 

### Sub-Sub Classes ###

#Mammal < Animal: 
# class Bat < Mammal

# attr_accessor :can_fly? :num_legs

  #@num_legs = 2
  #def can_fly? 
   # true 
  #end
#end




#Amphibian <Amimal: 
#class Frog < Amphibian

 # attr_accessor :tail? :num_legs
  #@num_legs = 4

  #def tail? 
    #true 
  #end 

#end

#Bird < Animal:
#class Parrot < Bird
 # @num_legs = 2
#end

### Sub-Sub-Sub Classes ###

#Primate < Mammal < Animal



