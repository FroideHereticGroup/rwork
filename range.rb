a = Range.new(1,10)
b = 1..10
p a == b

sum = 0
b.each do |i|
	sum += i
end
puts sum

c = b.to_a
p c
p a.to_a
p d = %w(1 2 3 4)

num = 2
p num**10