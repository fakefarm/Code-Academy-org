# Long challenge: Based on the following data,
#   write code that prints out the customer's total, including estimated
#   sales tax, based on the shipping address they entered.
# Your code should work even if the values of the data change.

# Exercise 1 : Your output should look like this: "Your total with tax is $4455.54."


shopping_cart = [
  {:name => "iPad 2", :price => 499, :quantity => 2},
  {:name => "iMac 27", :price => 1699, :quantity => 1},
  {:name => "MacBook Air 13", :price => 1299, :quantity => 1}
  ]
  
sales_tax = {
	"IL" => 0.115, 
	"IN" => 0.09, 
	"MI" => 0.06, 
	"WI" => 0.056
	}

params = {
  :name 		=> "Patrick McProgrammerson",
  :address1 => "222 W. Merchandise Mart Plaza",
  :address2 => "12th Floor",
  :city 		=> "Chicago",
  :state 		=> "IL",
  :zip 			=> "60654"
  }

# Exercise 1 : Answer -----------------------------------------------
=begin
	cart_value = 0
	shopping_cart.each do |item|
		cart_value += item[:price]  * item[:quantity] * (1 + sales_tax[params[:state]])
	end
	puts "Your total with tax is #{cart_value}."
	puts ""
=end

# Now change the value of the key :state in the params hash to "WI" and run your code again.
# Done. 

# Encapsulate your code in a method if you haven't already.
# The method should accept a cart, a hash containing tax rates, and an
#   address as arguments.



#TODO my issue is how do I pull blocks into methods?

# Now change the quantity of iMacs in the data to 3 and run your method.
=begin
order_value = 0
shopping_cart.each do |item|
	order_value += item[:price]  * item[:quantity] * (1 + sales_tax[params[:state]])
end

def order_output(shopping_cart)
	puts "#{shopping_cart[:price]}"
	puts (tax)
end
=end

def calculate(cart,tax,params)
	cart_value = 0
	
	cart.each do |item|
		cart_value += item[:price] * item[:quantity] * (1 + tax[params[:state]])
	end
	
	order_output(cart_value)
end

def order_output(cart)
	puts "Your total with tax is #{cart}."
end



# --- output
calculate(shopping_cart,sales_tax,params)
