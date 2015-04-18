def bubble_sort list

	sorted = false
	#tests if no switch was made 
	while !sorted do
		sorted = true
		list.each_with_index do |element, index|

			if index == list.length - 1 
				break
			end

			if element > list[index+1]
				list[index] = list[index+1]
				list[index+1] = element
				# a switch was made
				sorted = false
			end
		end
	end
	
	list
end


puts bubblesort [4,3,1,2,5,7,2,1,5,43,0]