class Grid

	def initialize 
		@cells = '015003002000100906270068430490002017501040380003905000900081040860070025037204600'
	end

	attr_reader :cells

	def cell_counter
		cells_array = @cells.split(//).map(&:to_i)
		cells_array.count
	end

	def first_cell_checker
		cells_array = @cells.split(//).map(&:to_i)
		cells_array.fetch(0)
	end

	def second_cell_checker
		cells_array = @cells.split(//).map(&:to_i)
		cells_array.fetch(1)
	end

	def solve
    
	end

	def solved?

	end


	def inspect

	end

end

  #   outstanding_before, looping = SIZE, false
		# while !solved? && !looping
		# 	try_to_solve # ask each cell to solve itself
		# 	outstanding = @cells.count {|c| c.solved? }
		# 	looping = outstanding_before == outstanding       
		# 	outstanding_before = outstanding     
		# end 

