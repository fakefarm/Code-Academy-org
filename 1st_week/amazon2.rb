
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

customer1 = {
  :name 		=> "Patrick McProgrammerson",
  :address1 => "222 W. Merchandise Mart Plaza",
  :address2 => "12th Floor",
  :city 		=> "Chicago",
  :state 		=> "IL",
  :zip 			=> "60654"
  }

def value(cart, customer, sales_tax)
	cart_value = 0
	
	cart.each do |item|
		cart_value += item[:price] * item[:quantity] * tax(customer, sales_tax)
	end
	
	cart_value
end

def cart_item_count(cart)
	cart.inject(0) do |memo, item|
		memo + item[:quantity]
	end
end

def checkout(cart_qty, cart_val)
	puts "You have #{cart_qty} items in your cart, which total $#{cart_val.round(2)}."
end

def tax(cust,tax_rate)
	1 +	tax_rate[cust[:state]]
end

cart_quantity = cart_item_count(shopping_cart)
cart_value = value(shopping_cart, customer1, sales_tax)
checkout(cart_quantity, cart_value)