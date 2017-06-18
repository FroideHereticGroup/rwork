def power_of(n)
	Proc.new do |x|
		x ** n
	end
end

a = power_of(2)
p a.call(10)

def power_of2(n)
	lambda do |x|
		return x ** n
	end
end

b = power_of2(2)
p b.(10)

def power_of3(n)
	Proc.new do |x|
		return x ** n
	end
end

c = power_of3(2)
p c == 10
