type_treatment = {
	:surf => ["test.jpg", "shirt.jpg", "shirt2.jpg"],
	:skate => [],
	:vintage => [],
}
puts type_treatment[:surf]
puts "----------"
puts type_treatment[:surf].push("3.jpg")
puts "----------"
puts type_treatment[:surf]