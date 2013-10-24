class Cell
    def initialize
      @puzzle = '015003002000100906270068430490002017501040380003905000900081040860070025037204600'
    	@value = 0
      @position = 0
    end
 
	attr_accessor :value 
  
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

  def row_calculator position, number_of_elements_in_row
      row = position / 9
      @row = row
  end

  def column_calculator position, number_of_elements_in_column
      column = position % 9
  end

  def quadrant_calculator row_calculator, column_calculator
      (((row_calculator/3)*3) + (column_calculator/3))
  end

  def row_neighbours row_calculator, get_position
      puzzle_array = @puzzle.split(//).map(&:to_i)
      row_neighbours_array = []
      puzzle_array.each_with_index do |cell, index|
          row_neighbours_array << cell if cell
        end
  end

end
