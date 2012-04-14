
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
	cart_quantity = 0

	cart.each do |item|
		cart_quantity += item[:quantity]
	end
	cart_quantity
end

def checkout(value)
	puts "You have #{cart_quantity} items in your cart which total $#{cart_value}."
end

def tax(cust,tax_rate)
	tax_rate[cust[:state]]
end

puts "Here are my tests..."

puts value(shopping_cart, customer1, sales_tax)
puts cart_item_count(shopping_cart)