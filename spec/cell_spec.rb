require 'cell'

describe Cell do

	let(:cell) { Cell.new }
	let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
	let(:grid) {double :grid}

	it "will set a default postion of 5 as it is created" do
		expect(cell.position).to eq 5
	end

	it "will have a postion 10 if initialised with 10" do
		cell = Cell.new(value = 0, position =10)
		expect(cell.position).to eq 10
	end

	it 'will have a row value of 0 when it initialises' do
		expect(cell.row).to eq 0
	end

	it 'should have a colum value of 5 when it it initialises' do
		expect(cell.column).to eq 5
	end

	it 'should be in quadrant 1 when it initialises' do
		expect(cell.quadrant).to eq 1
	end


	# it 'checks the value of a cell' do
	# 	expect(cell.value_check).to eq 0
	# end

	# it 'knows if it has a number in it' do
	# 	expect(cell.filled_out?).to be_false
	# end

	# it 'can get its position' do

	# 	expect(cell.get_position).to eq 0
	# end

	it 'should return row number' do
		expect(cell.row).to eq 0
	end

	it 'should return column number' do
		expect(cell.column).to eq 5
	end

	it 'should return quadrant' do
		expect(cell.quadrant).to eq 1
	end

	it 'returns row neighbours' do
	 	expect(cell.row_neighbours).to eq [1, 5, 3, 2]
	end

	it 'returns column neighbours' do
	 	expect(cell.column_neighbours).to eq [3, 8, 2, 5, 1, 4]
	end
	
end
