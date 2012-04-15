fruit = ["apple", "pear", "banana"]
vegitable = ["tomatoe","squash","broccoli"]

def greeting(basket)
	basket.each do |announce|
	puts "This is a #{announce.reverse}"
	end
end

# output
  greeting(fruit)
  greeting(vegitable)