#User provides list of numbers 
puts "Please enter the stock prices."
stock_prices = gets.chomp.split(/\D+/)	#Store numbers only in array

def stock_picker(stock_prices)

	stock_prices.map!{|price| price.to_i}	#Convert array values to integers

#Empty array for buy-low and sell-high differences
	difference = []

#Each day is considered a (low_price) and respective (high_price) is determined
	stock_prices.map.with_index do |price, i|
		low_price = price
		high_price = stock_prices[i+1..-1].max
#The differnces array collects all high-low differences		
		difference.push(high_price.to_i - low_price.to_i)
	end

	day_1 = difference.index(difference.max)	#Get day of highest difference possible
	day_2 = stock_prices.index(stock_prices[day_1+1..-1].max)	#Calculate correspoinding high value

	a = [day_1]
	b = [day_2]

	print a + b
end

stock_picker(stock_prices)