class Board

  class OffBoardError < StandardError #needed to call any error later on
  end

  MAX_X = 9

  # Types of Ship
  BATTLESHIP = 'B'
  DESTROYER  = 'D'
  CRUISER    = 'C'
  EMPTY      = '~'

  # The grid below represents the game grid. It's a hash of arrays of strings. Don't let the weird syntax confuse you. It's just a fancy way of defining an array of strings. Each row is actual an array of strings. Each spot is either empty (~) or has a ship: Battleship (B), Destroyer(D), or Cruiser(C).
 GRID = {
    #     0 1 2 3 4 5 6 7 8 9
    A: %w{~ ~ ~ C ~ ~ ~ B ~ ~},
    B: %w{~ ~ ~ C ~ ~ ~ B ~ ~},
    C: %w{~ ~ ~ ~ ~ ~ ~ B ~ ~},
    D: %w{~ ~ ~ ~ ~ ~ ~ B ~ ~},
    E: %w{~ ~ C C ~ ~ ~ ~ ~ ~},
    F: %w{~ ~ ~ ~ ~ D D D D ~},
    G: %w{~ ~ ~ ~ ~ ~ ~ ~ ~ ~}
  }

#dont need to intialize because calling on call itself. use intialize for an instance of a class only 
  
  class << self #doing this because you have play = Board.play       
    def play(coordinate)
      #GRID[:A][7] ... 7 is the 8th column
      #follow code is for raise error on test 06
      row = coordinate[0].to_sym #0 refers to first charactor of 'A8' which is fed to the method as "coordinate"
      column = coordinate[1].to_i -1 #need 8 to become 7 to match up with index value    
               #change to coordinate[1..2] OR coordinate[1..coordinate.length-1].to_i - 1 (for test 06 D11) 
    if row <= :G && (0..MAX_X).include?(column) #9 because we're referring to indices now, :G only works because A through Z is recognized as an order  
      result = GRID[row][column]
      #if result == 'B'
        #Battleship.new #switch from if to case statement
      case result
      when 'B'
        Battleship.new
      when 'C'
        Cruiser.new
      when 'D'
        Destroyer.new
      else 
        nil
      end 
    else
      raise OffBoardError.new("Play #{coordinate} off board") 
    end  

    #spacing off

    end 
  end 

end
