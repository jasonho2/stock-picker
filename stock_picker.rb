def stock_picker(array)
  # initialize some variables
  largest_delta = 0
  buy_index = 0
  sell_index = 0

  # begin loop for each with index to capture array value and index
  array.each_with_index do |price, i|
    (i..array.length-1).each do |j| # iterate over the current index and all future indices
      delta = array[j] - price
      if delta > largest_delta # find largest delta between indices and assign buy and sell indices
        largest_delta = delta
        sell_index = j
        buy_index = i
      end
    end
  end
  p [buy_index, sell_index]
end

stock_picker([17,3,6,9,15,8,6,1,10])