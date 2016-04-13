class Player

  attr_reader :hits, :misses
  attr_accessor :shots_fired

  def initialize
    @shots_fired = 0
    @hits = []
    @misses = []
  end 

  def fire(coordinate)
    #if @shots_fired <= 9
      #@shots_fired += 1
    #else 
      #false 
    #end 
    if self.shots_fired >= 10 #changed from @ to self to make the last test05 part play
      false
    else 
      self.shots_fired += 1
      result_of_play = Board.play(coordinate) #result is a new result, not from other page
      if result_of_play #don't need to say nil explicitly because nil is defined as false in ruby
        @hits << coordinate
      else 
        @misses << coordinate
      end 
      result_of_play
    end  
  end 

  def is_max_shots?
    self.shots_fired >= 10
  end

end
