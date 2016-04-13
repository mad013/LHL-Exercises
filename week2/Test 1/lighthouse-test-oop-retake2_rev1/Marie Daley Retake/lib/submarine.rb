class Submarine

attr_reader :depth, :tile, :total_revenue
attr_accessor :cargo

  def initialize
    @depth = Ocean::SURFACE
    @tile = 0 
    @cargo = []
    @total_revenue = 0
  
  end 

  def dive!
    if @depth >= 0
      @depth -= 500
    end 
  end 

  def surface
    if @depth <= 0 && @depth >= -500
      @depth = Ocean::SURFACE
    end
  end 

  def descend
    unless @depth == Ocean::SURFACE
      @depth -= 500
    end
    if @depth <= Ocean::MAX_DEPTH
      @depth = Ocean::MAX_DEPTH
    end
  end

  def ascend
    unless @depth == Ocean::SURFACE || @depth >= -500
      @depth += 500 
    end 
  end

  def forward
    if @tile != Ocean::MAX_TILE
      @tile += 1
    end 
  end 

  def backward
    until @tile == 0 
      @tile -= 1
    end 
  end 

  def sushiable_fishes
    @cargo.each {|shark| counts["Shark.new"] += 1}
    @cargo.each {|tuna| counts["GiantTuna.new"] += 1}
    @cargo.each {|salmon| counts["GiantSalmon.new"] += 1}
    if tuna && salmon == 0 
      0 
    else 
      tuna
      salmon
    end
  end 

  def fish(depth, tile)
    unless @depth == Ocean::SURFACE
      Ocean.fish(depth, tile) 
    end
  end 

  def sell_cargo
    if @depth == Ocean::SURFACE
      @cargo = []
      true
    else 
      false
    end  
  end

end
