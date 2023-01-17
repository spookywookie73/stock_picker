def stock_picker(array)
  cheapest_price = array[0]
  index = 0
  result = []
  profit = 0

  # loop through array and if a number is lower than the previously
  # stored number, replace the number with the lower one and
  # store it's index number as well.
  array.each_with_index do |price, index_num|
    if price < cheapest_price
      cheapest_price = price
      index = index_num
    end
    
    # if a number minus the stored low number is greater than the profit
    # number, replace the profit number with that higher number.
    # result then becomes the two numbers with the biggest profit.
    if price - cheapest_price > profit
      profit = price - cheapest_price
      result = [index, index_num]
    end
  end
  p result
end

stock_picker([17,3,6,9,15,8,6,1,10])