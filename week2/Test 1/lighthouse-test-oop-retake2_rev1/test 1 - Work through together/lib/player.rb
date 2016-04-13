class Player

attr_writer :shots_fired, :hits, :misses, :targeted_position

@targeted_position = @grid[][]


  def initialize
    @shots_fired = shots_fired
    @shots_fired = 0 
    @hits = hits
    @hits = [] 
    @misses = misses
    @misses = []
  end 

  def fire(targeted_position) 
    if @shots_fired <=9
      @shots_fired += 1
      Board.play(targeted_position) 
    else 
      false 
    end

    if @play == D
      Destroyer.new
    elsif @play == C
      Cruiser.new
    elsif @play == B
      Battleship.new
    end

    until @shots_fired == 10 
      if @play == nil 
        @misses << @targeted_position
      else 
        @hits << @targeted_position  
      end 
    end 

  end 

end
