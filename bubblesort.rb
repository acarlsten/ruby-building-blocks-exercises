def babblesort(ary)
  n = ary.length-1

  def sorter(ary)
    ary.each do |num|
      x = ary.index(num)
      y = x + 1

      if (ary[x] <=> ary[y]) == 1
        ary[x], ary[y] = ary[y], ary[x]
      elsif (ary[x] <=> ary[y]) == 0
        ary[x], ary[y] = ary[x], ary[y]
      end
      p ary
    end
    p "---------------------------------"
  end

n.times {sorter(ary)}
end

def bubblesort(numbers)
	(numbers.length-1).times{
		for i in 0...numbers.length-1
			if numbers[i] > numbers[i+1]
				numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
			end
		end
	}
	return numbers
end

p bubblesort([2, 1, 2, 2, 2, 2, 2, 2, 2, 3, 2, 1])
