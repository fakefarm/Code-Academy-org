images = ["test.jpg","test1.jpg","test2.jpg","test3.jpg","test4.jpg", "test5.html.erb"]

def filename(file)
	file.split('.').last
end

images.each do |i|
	p filename(i)
end

