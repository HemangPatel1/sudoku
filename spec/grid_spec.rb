require 'grid'

describe Grid do
	context "initialization" do
			 
		let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
		   
		let(:grid) { Grid.new(puzzle) }
			  
			 it 'should have 81 cells' do
				puzzle_array = puzzle.split(//)
				expect(puzzle_array.count).to eq 81		
			 end

			it 'should have an unsolved first cell' do
				puzzle_array = puzzle.split(//).map(&:to_i)
				expect(puzzle_array.fetch(0)).to eq 0	
			end
												    
			it 'should have a solved second cell with value 1' do
				puzzle_array = puzzle.split(//).map(&:to_i)
				expect(puzzle_array.fetch(1)).to eq 1
			end
			
	end
end
