class Cell
    
    attr_accessor :position
    attr_accessor :value

    def initialize value = 0, position=5
      @value = value
      @position = position
      @row = row
      @column = column
      @quadrant = quadrant
      @puzzle = '015003002000100906270068430490002017501040380003905000900081040860070025037204600'
      # @puzzle_array = cells_array
      # @value = value
    end
 
	# attr_accessor :value
 #  attr_accessor :cells_array
  
  def value_check
  	@value
  end


  # returns true if the cell is filled out, false otherwise
  def filled_out?
	 @value.nil?
  end

  def get_position
    position = @position
  end

  def candidates
    
  end

  def solve
    # do nothing if solved
    # request the list of candidates and 
    # get a new value if there's only one possible candidate
  end

  def row 
    row = @position / 9
		
  end

  def column
    column = @position % 9
		
  end

  def quadrant
    ((@row/3)*3) + (@column/3)
  end

  # we don't need to get rid of the value of the posistion it's
  # in because it will only calculate its neighbours when the 
  # value of the cell is 0 - at which point selecting n > 0 is
  # sufficient for what we need!

  # BUT - still trying to figure out how to initiate the puzzle
  # when the cell is crrated... without having to actually put
  # the whole string in, and converting it in the neighbour methods

  def row_neighbours
      puzzle_array = @puzzle.split(//).map(&:to_i)
      puzzle_array_rows = puzzle_array.each_slice(9).to_a
      puzzle_array_rows.fetch(row).select {|n| n >0}
  end

  def column_neighbours
      puzzle_array = @puzzle.split(//).map(&:to_i)
      puzzle_array_rows = puzzle_array.each_slice(9).to_a
      puzzle_array_rows.transpose.fetch(column).select {|n| n >0}
  end

end
