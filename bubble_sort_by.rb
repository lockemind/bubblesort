def bubble_sort_by list 
	return unless block_given?

	sorted = false
	#tests if no switch was made 
	while !sorted do
		sorted = true
		list.each_with_index do |element, index|

			if index == list.length - 1 
				break
			end

			if yield(element, list[index+1]) > 0
				list[index] = list[index+1]
				list[index+1] = element
				# a switch was made
				sorted = false
			end
		end
	end
	puts list	
	list	

end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
   right.length - left.length
end

bubble_sort_by([3,2,1,4]) do |left,right|
   right - left
end