class Cell
    
    attr_accessor :position
    attr_accessor :value

    def initialize value = 0, position=5
      @value = value
      @position = position
      @row = row
      @column = column
      @quadrant = quadrant

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
    @position / 9
  end

  def column
    @position % 9
  end

  def quadrant
    ((@row/3)*3) + (@column/3)
  end

  def row_neighbours row
      puzzle_array = @puzzle.split(//).map(&:to_i)
      puzzle_array_rows = puzzle_array.each_slice(9).to_a
      puzzle_array_rows.fetch(row).select {|n| n >0}
  end

  def column_neighbours column
      puzzle_array = @puzzle.split(//).map(&:to_i)
      puzzle_array_rows = puzzle_array.each_slice(9).to_a
      puzzle_array_rows.transpose.fetch(column).select {|n| n >0}
  end

end
