class Grid

	def initialize puzzle
		@cells = puzzle
	end

	attr_reader :cells

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

