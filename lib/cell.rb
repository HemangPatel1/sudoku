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


	# row and colum to row_location and column_location respectively
	# that way, can define a method for what the row_neighbours are based on the row
	# its located on. ie if row 4, need a method to actually show what else is in that 
	# row! ie divide the array/string into rows which i guess we've already done, but
	# then the method needs to say what else is on that line?
	
	
  def row_calculator index_number, number_of_elements_in_row
      row = index_number / number_of_elements_in_row
  end

  def column_calculator index_number, number_of_elements_in_row
      column = index_number % number_of_elements_in_row
  end

  def quadrant_calculator row_calculator, column_calculator
      (((row_calculator/3)*3) + (column_calculator/3))
  end

  def row_neighbours row_calculator
			
  end


end
