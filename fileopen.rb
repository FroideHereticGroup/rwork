#ブロックに関して

# File.open("http.rb") do |file|
# 	file.each_line do |line|
# 		print line
# 	end
# end

file = File.open("http.rb")
begin
	file.each_line do |line|
		print line
	end
ensure
	file.close
end

