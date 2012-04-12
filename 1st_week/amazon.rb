# Long challenge: Based on the following data,
#   write code that prints out the customer's total, including estimated
#   sales tax, based on the shipping address they entered.
# Your code should work even if the values of the data change.

# Your output should look like this: "Your total with tax is $4455.54."


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

cart_value = 0
shopping_cart.each do |item|
	cart_value += item[:price]  * item[:quantity] * (1 + sales_tax[params[:state]])
end
puts cart_value


 

# Now change the value of the key :state in the params hash to "WI" and run your code again.

# Encapsulate your code in a method if you haven't already.
# The method should accept a cart, a hash containing tax rates, and an
#   address as arguments.

# Now change the quantity of iMacs in the data to 3 and run your method.