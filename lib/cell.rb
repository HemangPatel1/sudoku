class Cell
    def initialize
    	@value = 0
  end
 
	attr_accessor :value 
  
  def value_check
  	@value
  end


  # returns true if the cell is filled out, false otherwise
  def filled_out?
	@value.nil?
  end

  def get_starting_position_from grid
    grid.first_cell_checker
  end

  def candidates
    
  end

  def solve
    # do nothing if solved
    # request the list of candidates and 
    # get a new value if there's only one possible candidate
  end

  def row_calculator index_number, number_of_elements_in_row
      row = index_number / number_of_elements_in_row
  end

  def column_calculator index_number, number_of_elements_in_row
      column = index_number % number_of_elements_in_row
  end

  def quadrant_calculator row_calculator, column_calculator
    return 1 if (0..2).include?(row_calculator) && (0..2).include?(column_calculator)
  end

  

end