require_relative 'quicksort'

describe QuickSort do

	before :each do
		@qs = QuickSort.new
		@array = [5, 4, 1, 7, 8, 2, 2, 0, 1, 13, 5]
		@sorted = @array.sort
	end

	context 'iterative' do
		it 'returns the array if length is 0' do
			expect(@qs.iterative([])).to eq []
		end

		it 'returns the array if length is 1' do
			expect(@qs.iterative([1])).to eq [1]
		end

		it 'returns the array sorted' do
			expect(@qs.iterative(@array)).to eq @sorted
		end
	end

	context 'recursive' do
		it 'returns the array if length is 0' do
			expect(@qs.recursive([])).to eq []
		end

		it 'returns the array if length is 1' do
			expect(@qs.recursive([1])).to eq [1]
		end

		it 'returns the array sorted' do
			expect(@qs.recursive(@array)).to eq @sorted
		end

	end
end
