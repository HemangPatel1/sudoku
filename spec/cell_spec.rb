require 'cell'

describe Cell do

	let(:cell) { Cell.new }

	it 'checks the value of a cell' do
		expect(cell.value_check).to eq 0
	end

	it 'knows if it has a number in it' do
		expect(cell.filled_out?).to be_false
	end

	it 'can get its starting position from grid' do
		grid = double :grid
		expect(grid).to receive(:first_cell_checker)
		cell.get_starting_position_from(grid)
	end

	it 'returns 0 for starting position' do
		grid = double :grid, {:first_cell_checker => 0}
		expect(cell.get_starting_position_from(grid)).to eq 0
	end

	it 'should return row number' do 
		expect(cell.row_calculator(10, 9)).to eq 1
	end

	it 'should return column number' do
		expect(cell.column_calculator(10, 9)).to eq 1
	end

	it 'should return quadrant' do
		expect(cell.quadrant_calculator(4, 1)).to eq 4
	end



	
end