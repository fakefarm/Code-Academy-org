
# Variables
chores = []
names = []
=begin
# 1. Welcome
puts "Welcome to the duty wheel"
puts "are you ready to play"

# 2. Enter chores
puts "please enter the chores you need done!"
chores << gets.chomp 
chores = chores[0].split(",")

print "Stop living like a pig and let's clean the " 
chores.each { |i| print i }

puts
=end
# 3. Enter names
puts "Please enter the names of house mates (Separated by commas)"
names << gets.chomp 
names = names[0].split(",")

print "Ok we have " 
names.each { |i| print i }
puts

limit = names.length
mate = names[rand(limit)]
mate2 = names[rand(limit)]
puts "#{mate} vs. #{mate2}"
# if mate == mate2, then 'run again'

# puts "please enter a name"
# name = gets.chomp
# puts "you entered #{name}"

# 4. Are you ready?

# 5. Output


