class Cruiser < Ship

  #inherits attr_reader/attr_accessor as well

  def initialize
    super(2,4)  #You know to use super because test 3 shows Cruiser.new with no parameters
    # @hits is automatically included with super
  end 


end
