exampleStocks = [23, 54, 10, 2, 47, 38, 95, 13, 12, 86, 47, 63, 02, 92]

def sortValues (exampleStocks)
    # sort stocks from lowest to highest value
    sortedStocks = exampleStocks.sort
    # get lowest & highest values
    lowest = sortedStocks[0]
    highest = sortedStocks[-1]
    # find & print profit
    profit = highest - lowest
    puts "You made £#{profit} profit!"
    # supply the user with the indexes (days) best to buy & sell
    indexes = exampleStocks.each_with_index.to_a.combination(2).max_by{ |low, high| high[0]-low[0]}.map{|price, i| i}
    puts "It would be best to buy on day #{indexes[0]} and sell on day #{indexes[1]}!"
end