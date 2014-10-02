#!/usr/bin/env ruby

require_relative('functions')

puts "Please enter the stock valuations array"
prices_array = gets.chomp

best_days = optimum_buy_sell(prices_array)

puts best_days