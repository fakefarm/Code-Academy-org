
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

customer = {
  :name 		=> "Patrick McProgrammerson",
  :address1 => "222 W. Merchandise Mart Plaza",
  :address2 => "12th Floor",
  :city 		=> "Chicago",
  :state 		=> "IL",
  :zip 			=> "60654"
}

# --- Methods ---------------------------------------

def sub_total(cart, customer)
  total = 0.0
  cart.each do |item|
    total += item[:price] * item[:quantity]
  end
  return total
end

def total_with_tax(sub_total,tax)
  return sub_total * tax
end

def cart_quantity(cart)
  product = 0
  cart.each do |item|
    product += item[:quantity]
  end
  return product
end

def order_summary(test,cust, tax)
	puts "<<-- Order Summary -->>"
	puts "Customer Name: #{cust[:name]}"
  puts "Your total: $#{test}"
	puts "Your tax rate is: #{tax[cust[:state]]}%."
	
end

# --- Conversion Variables --------------------------

order_tax_rate = (1 + sales_tax[customer[:state]])
customer_sub_total = sub_total(shopping_cart,customer)
customer_total = total_with_tax(sub_total(shopping_cart,customer),order_tax_rate)
cart_items = cart_quantity(shopping_cart)
checkout = order_summary("#{customer_total}",customer, sales_tax)

# -------------- output -----------------------------

# puts order_tax_rate
# puts customer_sub_total
# puts customer_total
# puts cart_items
print checkout


