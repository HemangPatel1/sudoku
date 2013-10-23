require 'cell'

describe Cell do

	let(:cell) { Cell.new }

	it 'checks the value of a cell' do
		expect(cell.value_check).to eq 0
	end

	it 'knows if it has a number in it' do
		expect(cell.filled_out?).to be_false
	end
	
end