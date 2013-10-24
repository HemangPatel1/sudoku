require 'cell'

describe Cell do

	let(:cell) { Cell.new }

	it 'checks the value of a cell' do
		expect(cell.value_check).to eq 0
	end

	it 'knows if it has a number in it' do
		expect(cell.filled_out?).to be_false
	end

	it 'can get its position' do
		expect(cell.get_position).to eq 0
	end

	it 'should return row number' do 
		expect(cell.row_calculator(0, 9)).to eq 0
	end

	it 'should return column number' do
		expect(cell.column_calculator(0, 9)).to eq 0
	end

	it 'should return quadrant' do
		expect(cell.quadrant_calculator(4, 1)).to eq 3
	end

	it 'returns row neighbours' do
		expect(cell.row_neighbours(0, 0)).to eq [1, 5, 0, 0, 3, 0, 0, 2]
	end





	
end