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

  def candidates
    
  end

  def solve
    # do nothing if solved
    # request the list of candidates and 
    # get a new value if there's only one possible candidate
  end

end