def optimum_buy_sell(prices)
	all_profits = Array.new(prices.size) { |i|
	Array.new(prices.size) { |j|
		if j > i 
			prices[j].to_i - prices[i].to_i
		else
			-Float::INFINITY
		end
	  }  }.flatten

	  max_profit = all_profits.max
	  buy_day, sell_day = all_profits.index(max_profit).divmod(prices.size)
end