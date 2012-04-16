# Problem 1 
# from www.ProjectEuler.net

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

number = (1...1000).to_a
multiples = []

number.each do |num|
	if num % 5 == 0 || num % 3 == 0
		multiples << num
	end
end

sum = multiples.inject(:+)

puts "The sum is #{sum}"