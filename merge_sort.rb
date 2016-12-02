class MergeSort
	def sort(numbers)
		if numbers.length == 1
			return numbers
		else 
			half = numbers.length/2
			return merge_lists(sort(numbers.slice(0..half-1)), sort(numbers.slice(half..-1)))
		end
	end
	def merge_lists(a,b)
		merged = []
		while a.length > 0 && b.length > 0
			if a[0] <= b[0]
				merged.push(a.shift)
			else
				merged.push(b.shift)
			end
		end
		while a.length > 0
			merged.push(a.shift)
		end
		while b.length > 0
			merged.push(b.shift)
		end
		return merged
	end
end