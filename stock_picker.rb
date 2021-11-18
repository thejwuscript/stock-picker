def stock_picker(array)
  profit_margins = {}
  for i in (array.length-1).downto(1)
    for j in (i-1).downto(0)
      profit_margins["[#{j},#{i}]"] = array[i] - array[j]
    end
  end
  best_days = profit_margins.max_by {|days, profit| profit}[0]
end

# Test
array = [17,3,6,9,15,8,6,1,10]
puts stock_picker(array) # => [1,4]