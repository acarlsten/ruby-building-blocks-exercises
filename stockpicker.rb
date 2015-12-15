def stockpicker(prices)
	biggest_profit = [ ]
	profit = 0
	counter = (0..(prices.size - 1)).to_a # create a basic array like [0, 1, 2] etc as long as the number of values in prices

	counter.each do |i| # for each part of the array
		counter.each do |j| # go through all the parts of the array
			if j > i # check all values that come later in time, higher in index
				if (prices[j] - prices[i]) > profit # use the INDEX VALUES from the basic array, ensured to be chronological, to compare the values of the prices array and check to see if its the highest
					profit = prices[j] - prices[i] # update the profit variable with this new value if so
		 			biggest_profit = [i,j] # update the biggest profit variable with the same
				end
			end
		end
	end

	p prices
	p biggest_profit
end

stockpicker([18, 23, 11, 22, 25, 12])
            [0, 1, 2, 3, 4, 5]


# stockarray.length-1
#
# each_with_index
#
#
#
#
#
