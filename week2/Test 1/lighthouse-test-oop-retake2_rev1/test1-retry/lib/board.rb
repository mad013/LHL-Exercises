class Board

class OffBoardError < StandardError
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

  class << self 

    def play(coordinate)

        coord_1 = coordinate[0].to_sym
        coord_2 = coordinate[1].to_i - 1 
      unless coord_1 >= :H || coord_2 >= 11 || coord_2 <= -1  
        return_value = GRID[coord_1][coord_2]
          case return_value 
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
    end 
  end  

end
