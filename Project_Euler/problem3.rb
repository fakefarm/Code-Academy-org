# Problem 3 
# from www.ProjectEuler.net

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

array = []

13195.times do |number|
	if number % number - 1 == 0 
	array << number
end

puts array
