# stock_picker
 takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

This is a method that takes an array, and finds the positions of the 2 numbers with the biggest difference
BUT the index of the lower value, must come before the index of higher value
if an array is [8,2,4,6] this method will return [1,3] (the value at index[a] must be lower than the value at index[b])
