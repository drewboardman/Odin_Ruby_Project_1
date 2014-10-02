def stockpicker(prices)
  a = Array.new(prices.size) { |i|
        Array.new(prices.size) { |j|
          (j > i) ? prices[j]-prices[i] : -Float::INFINITY } }.flatten
  max_profit = a.max
  bd, sd = a.index(max_profit).divmod(prices.size)
  print "Profits are #{max_profit} if you buy on #{bd} and sell on #{sd}"
end

stockpicker([17,3,6,9,15,8,6,9,1])