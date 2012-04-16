# Problem 2 
# from www.ProjectEuler.net

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

number = [1,2]
evens = []


while number[-1] < 4000000
	number << number[-1] + number[-2]
end
number.pop[-1]

number.each do |num|
	if num % 2 == 0
		evens << num
	end
end

print "These are your numbers #{evens.to_s}."
puts
puts "The sum of evens is #{evens.inject(:+)}"
