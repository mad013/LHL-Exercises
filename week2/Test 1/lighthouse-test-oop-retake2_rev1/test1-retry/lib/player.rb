class Player

  MAX_SHOTS = 10 

  attr_accessor :shots_fired, :hits, :misses 

  def initialize 
    @shots_fired = 0
    @hits = []
    @misses = []
  end 

  def fire(position)

    if self.shots_fired >= 10
      false
    else  
      self.shots_fired += 1
      result_of_play = Board.play(position)
        if result_of_play
          @hits.insert(0,position)
        else 
          @misses.insert(0,position)
          nil
        end 
        result_of_play
    end 

  end 

end
