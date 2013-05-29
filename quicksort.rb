class QuickSort
	def recursive(array)
		# this is the slow way of doing a recursive quicksort where we need O(n) space in addition to the space the array holds
		return array if array.length <= 1 

		less = []
		more = []
		pivot = array.delete_at( array.length / 2) # just going to start in the middle - although there are optimizations

		array.each do |element|
			if element <= pivot
				less.push(element)
			else
				more.push(element)
			end
		end

		return  (recursive(less) + [pivot] + recursive(more))
	end

	def iterative(array)
		return array
	end
end
