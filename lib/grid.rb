class Grid

	attr_reader :cells

	def initialize puzzle
		@puzzle = puzzle
		assign_values_to puzzle
	end

	def assign_values_to puzzle
		@cells = []
		i = 0
		for i in 0..80 
			@cells <<  Cell.new(value = puzzle[i].to_i, position = i+1)
		end
		@cells
	end

=begin
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
=end
	def solve
    
	end

	def solved?

	end

	# def inspect

	# end

	def puzzle_array
		@puzzle
	end

end

