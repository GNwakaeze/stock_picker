# This is a method that takes an array, and finds the positions of the 2 numbers with the biggest difference
# BUT the index of the lower value, must come before the index of higher value
# if an array is [8,2,4,6] this method will return [1,3] (the value at index[a] must be lower than the value at index[b])

# we start by declaring our variables (line 16-18)
# iterate through the array and take each item and compare it to the rest of the array (line 20+22)
# ensure the index of the first iteration is lower than the item in the second iteration (line 21+23-25)
# ensure that the difference is positive by skipping any iterations where the 1st number is higher than the 2nd (line 27-28)
# to find the biggest difference, we save it to our 'difference' variable, (line 31-34)
# we also log the indexes by saving them to our other variables
# and only update it when the new value is greater than the current one (line 29)
# lastly we create an array telling us the positions of the numbers with the biggest difference (line 38)


def stock_picker(array)
    difference = 0
    best_day_to_buy = nil
    best_day_to_sell = nil

    array.each do |first_stock_price| 
        day_of_first_stock_price = array.index(first_stock_price)
        array.each do |second_stock_price| 
            day_of_second_stock_price = array.index(second_stock_price)
            if day_of_first_stock_price >= day_of_second_stock_price
                next

            elsif first_stock_price >= second_stock_price
                next
            elsif difference >= (second_stock_price - first_stock_price)
                next
            else 
                difference = (second_stock_price - first_stock_price)
                best_day_to_buy = day_of_first_stock_price 
                best_day_to_sell = day_of_second_stock_price
            end
        end
    end
    best_days = Array.new()<<best_day_to_buy<<best_day_to_sell
end

stock_picker([17,3,6,9,15,8,6,1,10])