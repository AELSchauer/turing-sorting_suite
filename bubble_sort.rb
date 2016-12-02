class BubbleSort
	def sort(numbers)
		sorted = false
		i = 0
		until sorted == true do
			if numbers[i]  > numbers[i+1]
				numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
			end
			sorted = evaluate_sorted(numbers)
			i = i + 1
			if i == numbers.length-1
				i = 0
			end
		end
		return numbers
	end
	def evaluate_sorted(numbers)
		(numbers.length-1).times do |i|
			if numbers[i] > numbers[i+1]
				return false 
			end
		end
		return true
	end
end