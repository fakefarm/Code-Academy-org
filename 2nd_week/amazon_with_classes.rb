# This should look familiar:

# shopping_cart = [
#   {:name => "iPad 2", :price => 499, :quantity => 2},
#   {:name => "iMac 27", :price => 1699, :quantity => 1},
#   {:name => "MacBook Air 13", :price => 1299, :quantity => 1}
#   ]


# CHALLENGE:
# Don't use the hash above. Instead, make the code below work by creating two classes: Item and Cart.

# HINT: It may help to use arrays and hashes inside your Cart class.
# Don't worry about sales tax for now.



# Your code goes here.

class Item
	def initialize(name,price)
		@name = name
		@price = price
	end
	
	def name
		@name
	end
	
	def price
		@price
	end	
end



class Cart
	def initialize
		@cart = []
	end
	
	def add(item,qty)
		item_hash = { :item => item, :quantity => qty }
		@cart << item_hash
	end
	
	def cart
		@cart
	end
	
	def total
		t = 0
		@cart.each do |item|
			t += item[:item].price * item[:quantity]
		end
		return t
	end
end


ipad = Item.new("iPad 2", 499)
imac = Item.new("iMac 27", 1699)
macbook = Item.new("MacBook Air 13", 1299)

shopping_cart = Cart.new
shopping_cart.add(ipad,2)
shopping_cart.add(imac, 1)
shopping_cart.add(macbook, 1)
puts shopping_cart
puts shopping_cart.cart
puts shopping_cart.total # => 3996

output = File.new("view_cart.html","w")
output.puts "<h1>Your Shopping cart</h1>"
@cart.each do |item|
puts "Item is here"	
end
output.close

=begin
def start
puts "Welcome to Amazon!"
puts "What do you want?"
name = gets.chomp
puts "What kind?"
kind = gets.chomp
puts "Err... Sorry I don't have my glasses, how much is that one?"
price = gets.chomp
puts "Okay so you want a #{name}, more specifically a #{kind}, and you say that is #{price}. Correct?"
response = gets.chomp
	unless response == "no"
		name = Item.new(kind,price)
	end
end
=end





# Guess what?
# You can actually output to a file instead of to the console:

# output = File.new("view_cart.html", "w")
# output.puts "<h1>Your Shopping Cart</h1>"

# Try opening the file you just created with your text editor.
# It should be in the same folder as this file.
# Now open it with a browser. Pretty cool, huh?

# NEXT CHALLENGE:
# Write code in here that generates the html required to print a list of the
#   in the shopping cart, along with the cart total at the bottom. Make it look
#   nicer with some CSS.

# HINT: Use string interpolation.



# Your code goes here.



# Don't forget to close the file when you are done writing to it:

# output.close