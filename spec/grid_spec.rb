require 'grid'

describe Grid do
	context "initialization" do
			 
		let(:puzzle) {  }
		   '015003002000100906270068430490002017501040380003905000900081040860070025037204600'
		let(:grid) { Grid.new(puzzle) }
		let(:cell) { double :cell }
			  
			it 'should initialize with 81 cell objects' do
			 	expect(grid.cells.count).to eq 81
			end

			# it 'should have an unsolved first cell' do
			# 	expect(grid.first_cell_checker).to eq 0	
			# end
												    
			# it 'should have a solved second cell with value 1' do
			# 	expect(grid.second_cell_checker).to eq 1
			# end
			
	end
end
