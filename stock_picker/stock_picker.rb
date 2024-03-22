require 'pry'
require 'pry-byebug'

def stock_picker(prices = []) 
    results = []
    buy = 0
    sell = 0
    buy_index = 0
    sell_index = 0

    prices.each_with_index do |a, a_index|

        prices.each_with_index do |b, b_index|
            if b_index <= a_index then next end

            if b - a > sell - buy
                buy = a
                buy_index = a_index
                sell = b
                sell_index = b_index
            end

        end

    end 

    results.push(buy_index)
    results.push(sell_index)
end

p stock_picker([22])
