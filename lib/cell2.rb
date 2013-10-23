class Cell
  
  attr_accessor :row 
  attr_accessor :column 
  attr_accessor :square
  attr_accessor :position

  def initialize position
    @position = position
    @row = get_row_for position
    @column = get_column_for position
    @square = get_square_for position
  end
 
	attr_accessor :value 
  
  def value_check
  	@value
  end


  # returns true if the cell is filled out, false otherwise
  def filled_out?
	@value.nil?
  end

  def candidates
    
  end

  def solve
    # do nothing if solved
    # request the list of candidates and 
    # get a new value if there's only one possible candidate
  end

  def get_row_for position
  end

  def get_column_for position
  end

  def get_square_for position
  end

end