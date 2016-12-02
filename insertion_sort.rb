class InsertionSort
	def insert_sorted(sorted, unsorted)
		n = unsorted.shift
		i = determine_position(sorted, n)
		sorted.insert(i, n)
		return sorted, unsorted
	end
	def determine_position(sorted, n)
		if sorted.length == 0
			return 0
		else
			(sorted.length).times do |i|
				if n <= sorted[i]
					return i
				end
			end
			return -1
		end
	end
	def sort(unsorted)
		sorted = []
		(unsorted.length).times do
			sorted, unsorted = insert_sorted(sorted, unsorted)
		end
		return sorted
	end
end