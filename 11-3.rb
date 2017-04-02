file = File.open("sample.txt")
file.each_line do |i|
	print i
end
file.close

File.open("sample.txt") do |file|
	file.each do |line|
		puts line
	end
end
